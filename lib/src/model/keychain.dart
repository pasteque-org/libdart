import 'dart:convert';
import 'dart:typed_data';

import 'package:archethic_lib_dart/src/model/address.dart';
import 'package:archethic_lib_dart/src/model/authorized_key.dart';
import 'package:archethic_lib_dart/src/model/crypto/key_pair.dart';
import 'package:archethic_lib_dart/src/model/service.dart';
import 'package:archethic_lib_dart/src/model/transaction.dart';
import 'package:archethic_lib_dart/src/utils/crypto.dart' as crypto;
import 'package:archethic_lib_dart/src/utils/uint8List_converter.dart';
import 'package:archethic_lib_dart/src/utils/utils.dart';
import 'package:crypto/crypto.dart' as crypto_lib show Hmac, sha512;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwk/jwk.dart';
import 'package:pointycastle/api.dart';

part 'keychain.freezed.dart';
part 'keychain.g.dart';

/// Identifier for the origin key derivation within the keychain.
const keychainOriginId = 0;

/// The current version of the keychain data structure and serialization format.
const kVersionKeychain = 4;

@freezed
/// A hierarchical deterministic keychain for managing multiple cryptographic services and key derivations.
///
/// The [Keychain] holds a master seed and a set of named services, each with its own derivation path, curve, and hash algorithm.
/// It provides methods for key derivation, address generation, transaction signing, and secure sharing of service seeds.
abstract class Keychain with _$Keychain {
  /// Creates a new [Keychain] instance.
  ///
  /// [seed]: The master seed for key derivation.
  /// [version]: The keychain version (default: [kVersionKeychain]).
  /// [services]: A map of service names to [Service] objects, each defining a derivation path and cryptographic parameters.
  const factory Keychain({
    /// The master seed for the keychain, used for all key derivations.
    @Uint8ListConverter() final Uint8List? seed,

    /// The version of the keychain data structure.
    @Default(kVersionKeychain) final int version,

    /// The set of named services managed by this keychain.
    @Default({}) final Map<String, Service> services,
  }) = _Keychain;

  /// Private constructor for [Keychain].
  const Keychain._();

  /// Creates a [Keychain] from a JSON map.
  factory Keychain.fromJson(final Map<String, dynamic> json) =>
      _$KeychainFromJson(json);

  /// Returns a copy of this keychain with an added or updated service.
  ///
  /// [name]: The name of the service.
  /// [derivationPath]: The derivation path for the service.
  /// [curve]: The cryptographic curve to use (default: 'ed25519').
  /// [hashAlgo]: The hash algorithm to use (default: 'sha256').
  Keychain copyWithService(
    final String name,
    final String derivationPath, {
    final String curve = 'ed25519',
    final String hashAlgo = 'sha256',
  }) {
    return copyWith(
      services: <String, Service>{
        ...services,
        name: Service(
          derivationPath: derivationPath,
          curve: curve,
          hashAlgo: hashAlgo,
        ),
      },
    );
  }

  /// Serializes the keychain to a binary format.
  ///
  /// Returns a [Uint8List] containing the encoded keychain data.
  Uint8List encode() {
    var servicesBuffer = Uint8List(0);
    services.forEach((final serviceName, final service) {
      servicesBuffer = concatUint8List(<Uint8List>[
        servicesBuffer,
        Uint8List.fromList(<int>[serviceName.length]),
        Uint8List.fromList(serviceName.codeUnits),
        Uint8List.fromList(<int>[service.derivationPath.length]),
        Uint8List.fromList(service.derivationPath.codeUnits),
        Uint8List.fromList(<int>[crypto.curveToID(service.curve)]),
        Uint8List.fromList(<int>[crypto.hashAlgoToID(service.hashAlgo)]),
      ]);
    });

    return concatUint8List(<Uint8List>[
      toByteArray(kVersionKeychain, length: 4),
      Uint8List.fromList(<int>[seed!.length]),
      seed!,
      Uint8List.fromList(<int>[services.length]),
      Uint8List.fromList(servicesBuffer),
    ]);
  }

  /// Derives a [KeyPair] for a given service and index.
  ///
  /// [serviceName]: The name of the service.
  /// [index]: The derivation index (default: 0).
  /// [pathSuffix]: Optional suffix to append to the derivation path.
  /// Throws if the service does not exist.
  KeyPair deriveKeypair(
    final String serviceName, {
    final int index = 0,
    final String pathSuffix = '',
  }) {
    if (services[serviceName] == null) {
      throw Exception("Service doesn't exist in the keychain");
    }
    return deriveArchethicKeypair(
      seed!.toList(),
      services[serviceName]!.derivationPath,
      index,
      curve: services[serviceName]!.curve,
      pathSuffix: pathSuffix,
    );
  }

  /// Derives an Archethic address for a given service and index.
  ///
  /// [serviceName]: The name of the service.
  /// [index]: The derivation index (default: 0).
  /// [pathSuffix]: Optional suffix to append to the derivation path.
  /// Throws if the service does not exist.
  Uint8List deriveAddress(
    final String serviceName, {
    final int index = 0,
    final String pathSuffix = '',
  }) {
    if (services[serviceName] == null) {
      throw Exception("Service doesn't exist in the keychain");
    }

    final keyPair = deriveArchethicKeypair(
      seed!.toList(),
      services[serviceName]!.derivationPath,
      index,
      curve: services[serviceName]!.curve,
      pathSuffix: pathSuffix,
    );
    final curveID = crypto.curveToID(services[serviceName]!.curve);

    final hashedPublicKey = crypto.hash(
      keyPair.publicKey,
      algo: services[serviceName]!.hashAlgo,
    );

    return concatUint8List(<Uint8List>[
      Uint8List.fromList(<int>[curveID]),
      Uint8List.fromList(hashedPublicKey),
    ]);
  }

  /// Builds and signs a transaction using a derived keypair.
  ///
  /// [transaction]: The transaction to sign.
  /// [serviceName]: The name of the service.
  /// [index]: The derivation index.
  /// [pathSuffix]: Optional suffix for the derivation path.
  /// [curve]: The cryptographic curve to use (default: 'ed25519').
  /// [hashAlgo]: The hash algorithm to use (default: 'sha256').
  /// Returns a tuple containing the signed transaction and the keypair used.
  ({Transaction transaction, KeyPair keyPair}) buildTransaction(
    final Transaction transaction,
    final String serviceName,
    final int index, {
    final String pathSuffix = '',
    final String? curve = 'ed25519',
    final String? hashAlgo = 'sha256',
  }) {
    final keypair = deriveKeypair(
      serviceName,
      index: index,
      pathSuffix: pathSuffix,
    );
    final transactionWithAddress = transaction.copyWith(
      address: Address(
        address: uint8ListToHex(
          deriveAddress(serviceName, index: index + 1, pathSuffix: pathSuffix),
        ),
      ),
      previousPublicKey: uint8ListToHex(Uint8List.fromList(keypair.publicKey!)),
    );
    final payloadForPreviousSignature =
        transactionWithAddress.previousSignaturePayload();
    final previousSignature = crypto.sign(
      payloadForPreviousSignature,
      keypair.privateKey,
    );

    return (
      transaction: transactionWithAddress
          .setPreviousSignatureAndPreviousPublicKey(
            uint8ListToHex(previousSignature),
            uint8ListToHex(Uint8List.fromList(keypair.publicKey!)),
          ),
      keyPair: keypair,
    );
  }

  /// Converts the keychain to a Decentralized Identifier (DID) document.
  ///
  /// Only services using the Archethic derivation scheme (purpose '650') are included.
  /// Returns a map representing the DID document.
  Map<String, dynamic> toDID() {
    final address = crypto.deriveAddress(uint8ListToHex(seed!), 0);
    final verificationMethods = List<Map<String, dynamic>>.empty(
      growable: true,
    );
    final authentications = List<String>.empty(growable: true);

    services.forEach((final serviceName, final service) {
      try {
        final purpose = service.derivationPath
            .split('/')
            .map((final e) => e.replaceAll("'", ''))
            .elementAt(1);

        // Only support of archethic derivation scheme for now
        if (purpose == '650') {
          final keyPair = deriveArchethicKeypair(
            seed!.toList(),
            service.derivationPath,
            0,
            curve: service.curve,
          );

          verificationMethods.add(<String, dynamic>{
            'id': 'did:archethic:$address#$serviceName',
            'type': 'JsonWebKey2020',
            'publicKeyJwk':
                keyToJWK(
                  Uint8List.fromList(keyPair.publicKey!),
                  serviceName,
                ).toJson(),
            'controller': 'did:archethic:$address',
          });

          authentications.add('did:archethic:$address#$serviceName');

          // else if (purpose == '44') {
          //   // >>> DO NOT ADD FOR NOW <<<
          //   // BIP44/EVM key derivation is not implemented here.
          //   // We simply ignore these services for DID generation.
          //   // print("Ignoring purpose '44' for DID generation: $serviceName");
          // }
          // else {
          //   // Silently ignore other unknown purpose values instead of crashing
          //   print("Ignoring unknown purpose '$purpose' for DID generation: $serviceName");
          // }
        }
      } on Exception {
        // ignore: empty_catches
      }
    });

    return <String, dynamic>{
      '@context': <String>['https://www.w3.org/ns/did/v1'],
      'id': 'did:archethic:$address',
      'authentication': authentications, // Will only contain the '650' keys
      'verificationMethod':
          verificationMethods, // Will only contain the '650' keys
    };
  }

  /// Encrypts the service seed using ECIES and shares it with authorized public keys.
  ///
  /// [service]: The name of the service.
  /// [publicKeys]: The list of public keys to authorize.
  /// [pathSuffix]: Optional suffix for the derivation path.
  /// Returns a tuple containing the encrypted secret and the list of [AuthorizedKey]s.
  ({Uint8List secret, List<AuthorizedKey> authorizedPublicKeys})
  ecEncryptServiceSeed(
    final String service,
    final List<String> publicKeys, {
    final String pathSuffix = '',
  }) {
    if (services[service] == null) {
      throw Exception("Service doesn't exist in the keychain");
    }

    final serviceSelected = services[service];

    if (isPathWithIndex(serviceSelected!.derivationPath)) {
      throw Exception(
        'Service should have a derivation path without index (removing the last "/0")',
      );
    }

    final extendedSeed = deriveServiceSeed(
      seed!.toList(),
      serviceSelected.derivationPath,
      0,
      pathSuffix: pathSuffix,
    );

    final aesKey = generateRandomAESKey();

    final secret = crypto.aesEncrypt(extendedSeed, aesKey);

    final authorizedPublicKeys = <AuthorizedKey>[];
    for (final key in publicKeys) {
      authorizedPublicKeys.add(
        AuthorizedKey(
          encryptedSecretKey: uint8ListToHex(crypto.ecEncrypt(aesKey, key)),
          publicKey: key,
        ),
      );
    }
    return (secret: secret, authorizedPublicKeys: authorizedPublicKeys);
  }
}

/// Decodes a [Keychain] from its binary representation.
///
/// The [binary] data is expected to be in a specific format:
/// - Version (4 bytes)
/// - Seed size (1 byte)
/// - Seed (variable length)
/// - Number of services (1 byte)
/// - For each service:
///   - Service name length (1 byte)
///   - Service name (variable length)
///   - Derivation path length (1 byte)
///   - Derivation path (variable length)
///   - Curve ID (1 byte)
///   - Hash algorithm ID (1 byte)
///
/// - [binary]: A [Uint8List] containing the serialized keychain data.
///
/// Returns the deserialized [Keychain] object.
Keychain decodeKeychain(final Uint8List binary) {
  var pos = 0;
  final version = binary.sublist(pos, 4).buffer.asByteData().getInt32(0);
  pos = pos + 4;
  final seedSize = binary.sublist(pos, pos + 1)[0];
  pos++;
  final seed = binary.sublist(pos, pos + seedSize);
  pos = pos + seedSize;
  final nbServices = binary.sublist(pos, pos + 1)[0];
  pos++;

  final services = <String, Service>{};
  for (var i = 0; i < nbServices; i++) {
    final serviceNameLength = binary.sublist(pos, pos + 1)[0];
    pos++;
    final serviceName = binary.sublist(pos, pos + serviceNameLength);
    pos = pos + serviceNameLength;
    final derivationPathLength = binary.sublist(pos, pos + 1)[0];
    pos++;
    final derivationPath = binary.sublist(pos, pos + derivationPathLength);
    pos = pos + derivationPathLength;
    final curveId = binary.sublist(pos, pos + 1)[0];
    pos++;
    final hashAlgoId = binary.sublist(pos, pos + 1)[0];
    pos++;

    services[utf8.decode(serviceName)] = Service(
      derivationPath: utf8.decode(derivationPath),
      curve: crypto.idToCurve(curveId),
      hashAlgo: crypto.idToHashAlgo(hashAlgoId),
    );
  }
  return Keychain(seed: seed, version: version, services: services);
}

/// Derives an Archethic [KeyPair] using a specific derivation scheme.
///
/// This function takes a master [seed], a [derivationPath], and an [index]
/// to generate a unique key pair.
///
/// - [seed]: The master seed as a list of integers.
/// - [derivationPath]: The path to derive the key from.
/// - [index]: The specific index for key derivation.
/// - [curve]: The cryptographic curve to use (e.g., 'ed25519'). Defaults to 'ed25519'.
/// - [pathSuffix]: An optional suffix to append to the service name part of the
///   derivation path if the path does not end with an index.
///
/// Returns a [KeyPair] containing the public and private keys.
KeyPair deriveArchethicKeypair(
  final List<int> seed,
  final String derivationPath,
  final int index, {
  final String curve = 'ed25519',
  final String pathSuffix = '',
}) {
  final extendedSeed = deriveServiceSeed(
    seed,
    derivationPath,
    index,
    pathSuffix: pathSuffix,
  );

  return isPathWithIndex(derivationPath)
      ? crypto.generateDeterministicKeyPair(
        extendedSeed,
        curve,
        keychainOriginId,
      )
      : crypto.deriveKeyPair(uint8ListToHex(extendedSeed), index, curve: curve);
}

/// Derives a service-specific seed from a master seed and derivation path.
///
/// This function uses HMAC-SHA512 to combine the master [seed] with a hashed
/// version of the [derivationPath] (potentially modified by [pathSuffix] and [index])
/// to produce a 32-byte service seed.
///
/// - [seed]: The master seed as a list of integers.
/// - [derivationPath]: The hierarchical path for the service.
/// - [index]: The specific index for key derivation within the service path.
/// - [pathSuffix]: An optional suffix appended to the service name component of the
///   [derivationPath] if it's not an indexed path. Defaults to an empty string.
///
/// Returns a [Uint8List] of 32 bytes representing the derived service seed.
Uint8List deriveServiceSeed(
  final List<int> seed,
  final String derivationPath,
  final int index, {
  final String pathSuffix = '',
}) {
  final sha256 = Digest('SHA-256');
  var hashedPath = Uint8List.fromList([]);
  if (isPathWithIndex(derivationPath)) {
    hashedPath = sha256.process(
      Uint8List.fromList(
        replaceDerivationPathIndex(derivationPath, pathSuffix, index).codeUnits,
      ),
    );
  } else {
    final path = derivationPath.split('/');
    final serviceName = path.removeLast() + pathSuffix;
    hashedPath = sha256.process(
      Uint8List.fromList(utf8.encode('${path.join('/')}/$serviceName')),
    );
  }

  final hmac = crypto_lib.Hmac(crypto_lib.sha512, seed);
  final digest = hmac.convert(hashedPath);
  return Uint8List.fromList(digest.bytes.sublist(0, 32));
}

/// Checks if the given [path] string represents a derivation path with an explicit index.
///
/// A path is considered to have an index if it consists of exactly four segments
/// when split by '/', and the last segment is '0'.
/// For example, "m/650'/0'/0" is an indexed path.
bool isPathWithIndex(final String path) {
  final servicePath = path.split('/');
  return servicePath.length == 4 && servicePath[3] == '0';
}

/// Replaces the index in a derivation path and appends a suffix to the preceding segment.
///
/// Given a [path] like "m/purpose'/type'/old_index", a [suffix], and a new [index],
/// this function modifies the path segment before the index by appending the [suffix]
/// and then replaces "old_index" with the new [index].
/// For example, `replaceDerivationPathIndex("m/650'/0'/0", "_custom", 1)`
/// would result in "m/650'/0_custom/1".
///
/// - [path]: The original derivation path string.
/// - [suffix]: The string to append to the path segment before the index.
/// - [index]: The new index to set at the end of the path.
///
/// Returns the modified derivation path string.
String replaceDerivationPathIndex(
  final String path,
  final String suffix,
  final int index,
) {
  final pathArr = path.split('/')..removeLast();
  pathArr
    ..add('${pathArr.removeLast()}$suffix')
    ..add(index.toString());
  return pathArr.join('/');
}

/// Converts a raw public key to a JSON Web Key (JWK) format.
///
/// The function identifies the curve type (Ed25519, P-256, or secp256k1)
/// based on the first byte of the [publicKey] and constructs the appropriate
/// JWK representation.
///
/// - [publicKey]: The raw public key bytes. The first byte indicates the curve ID.
/// - [keyId]: A string identifier for the key, included in the JWK.
///
/// Returns a [Jwk] object representing the public key.
/// Throws an [Exception] if the curve type is not supported.
Jwk keyToJWK(final Uint8List publicKey, final String keyId) {
  final curveID = publicKey[0];
  final key = publicKey.sublist(2, publicKey.length);

  switch (curveID) {
    case 0:
      return Jwk.fromJson(<dynamic, dynamic>{
        'kty': 'OKP',
        'crv': 'Ed25519',
        'x': base64Url.encode(key),
        'kid': keyId,
      });
    case 1:
      final x = key.sublist(16);
      final y = key.sublist(-16);
      return Jwk.fromJson(<dynamic, dynamic>{
        'kty': 'EC',
        'crv': 'P-256',
        'x': base64Url.encode(x),
        'y': base64Url.encode(y),
        'kid': keyId,
      });
    case 2:
      final x = key.sublist(16);
      final y = key.sublist(-16);
      return Jwk.fromJson(<dynamic, dynamic>{
        'kty': 'EC',
        'crv': 'secp256k1',
        'x': base64Url.encode(x),
        'y': base64Url.encode(y),
        'kid': keyId,
      });
    default:
      throw Exception('Curve not supported');
  }
}

/// Converts a JSON Web Key (JWK) map to its raw public key byte representation.
///
/// This function parses the [jwk] map, identifies the key type (`kty`) and curve (`crv`),
/// and reconstructs the raw public key bytes. It supports 'OKP' (Ed25519) and
/// 'EC' (P-256, secp256k1) key types. Base64URL encoded values are normalized
/// before decoding.
///
/// - [jwk]: A map representing the JSON Web Key.
///
/// Returns a [Uint8List] containing the raw public key bytes.
/// Throws an [Exception] if the JWK format or curve is unsupported.
Uint8List jwkToKey(final Map<String, dynamic> jwk) {
  String normalizeBase64(final String base64) {
    final buffer = StringBuffer(base64);
    while (buffer.length % 4 != 0) {
      buffer.write('=');
    }
    return buffer.toString();
  }

  final String kty = jwk['kty'];
  final String crv = jwk['crv'];
  final String xBase64 = jwk['x'];
  final x = base64Url.decode(normalizeBase64(xBase64));

  if (kty == 'OKP' && crv == 'Ed25519') {
    // Ed25519 format (Curve ID = 0)
    return Uint8List.fromList([0, 0] + x);
  } else if (kty == 'EC' && (crv == 'P-256' || crv == 'secp256k1')) {
    // Extract x and y coordinates for EC keys
    final String yBase64 = jwk['y'];
    final y = base64Url.decode(normalizeBase64(yBase64));

    final curveID = (crv == 'P-256') ? 1 : 2;

    // Format: [CurveID, 0] + X + Y
    return Uint8List.fromList([curveID, 0] + x + y);
  } else {
    throw Exception('Unsupported JWK format');
  }
}
