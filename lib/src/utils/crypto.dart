// ignore_for_file: type_annotate_public_apis, strict_top_level_inference

import 'dart:convert' show utf8;
import 'dart:math' show Random;

import 'package:archethic_lib_dart/crypto_keys/crypto_keys.dart'
    as crypto_keys
    show EncryptionResult, KeyPair, SymmetricKey, algorithms;
import 'package:archethic_lib_dart/src/model/crypto/aes_auth_encrypt_infos.dart';
import 'package:archethic_lib_dart/src/model/crypto/key_pair.dart';
import 'package:archethic_lib_dart/src/model/crypto/secret.dart';
import 'package:archethic_lib_dart/src/utils/utils.dart';
import 'package:crypto/crypto.dart' as crypto show Hmac, sha256, sha512;
import 'package:ecdsa/ecdsa.dart'
    as ecdsa
    show Signature, deterministicSign, verify;
import 'package:elliptic/ecdh.dart' as ecdh show computeSecret;
import 'package:elliptic/elliptic.dart'
    as elliptic
    show PrivateKey, PublicKey, getP256, getSecp256k1;
import 'package:pinenacl/api.dart';
import 'package:pinenacl/ed25519.dart'
    as ed25519
    show Signature, SigningKey, VerifyKey;
import 'package:pinenacl/tweetnacl.dart' as tweetnacl show TweetNaClExt;
import 'package:pointycastle/export.dart' show Digest;
import 'package:x25519/x25519.dart' as x25519 show X25519, generateKeyPair;

/// Identifier for software-based key origins.
const softwareId = 1;

/// Get the ID of a given hash algorithm.
///
/// Supported algorithms: 'sha256', 'sha512', 'sha3-256', 'sha3-512', 'blake2b', 'keccak256'.
/// Throws an error if the algorithm is not supported.
int hashAlgoToID(final String hashAlgo) {
  switch (hashAlgo) {
    case 'sha256':
      return 0;
    case 'sha512':
      return 1;
    case 'sha3-256':
      return 2;
    case 'sha3-512':
      return 3;
    case 'blake2b':
      return 4;
    case 'keccak256':
      return 5;
    default:
      throw 'Hash algorithm not supported';
  }
}

/// Get the hash algo name from the hash algorithm ID.
///
/// Supported IDs: 0 (sha256), 1 (sha512), 2 (sha3-256), 3 (sha3-512), 4 (blake2b), 5 (keccak256).
/// Throws an error if the ID is not supported.
String idToHashAlgo(final int id) {
  switch (id) {
    case 0:
      return 'sha256';
    case 1:
      return 'sha512';
    case 2:
      return 'sha3-256';
    case 3:
      return 'sha3-512';
    case 4:
      return 'blake2b';
    case 5:
      return 'keccak256';
    default:
      throw 'Hash algorithm ID not supported';
  }
}

/// Get the ID of a given Elliptic curve.
///
/// Supported curves: 'ed25519', 'P256', 'secp256k1'.
/// Throws an error if the curve is not supported.
int curveToID(final String curve) {
  switch (curve) {
    case 'ed25519':
      return 0;
    case 'P256':
      return 1;
    case 'secp256k1':
      return 2;
    default:
      throw 'Curve not supported';
  }
}

/// Get the curve name from the curve ID.
///
/// Supported IDs: 0 (ed25519), 1 (P256), 2 (secp256k1).
/// Throws an error if the ID is not supported.
String idToCurve(final int id) {
  switch (id) {
    case 0:
      return 'ed25519';
    case 1:
      return 'P256';
    case 2:
      return 'secp256k1';
    default:
      throw 'Curve ID not supported';
  }
}

/// Create a hash digest from the data with a hash algorithm identification prepending the digest.
///
/// The resulting address is a hex string composed of the curve ID and the hashed public key.
///
/// - [seed] : Keypair derivation seed (hex string by default).
/// - [index] : Number to identify the order of keys to generate.
/// - [curve] : Elliptic curve to use (default: 'ed25519'). Supported: "ed25519", "P256", "secp256k1".
/// - [hashAlgo] : Hash algorithm (default: 'sha256'). Supported: "sha256", "sha512", "sha3-256", "sha3-512", "blake2b".
/// - [isSeedHexa] : Whether the provided [seed] is a hexadecimal string (default: true).
String deriveAddress(
  final String seed,
  final int index, {
  final String curve = 'ed25519',
  final String hashAlgo = 'sha256',
  final bool isSeedHexa = true,
}) {
  final keypair = deriveKeyPair(
    seed,
    index,
    curve: curve,
    isSeedHexa: isSeedHexa,
  );

  final curveID = curveToID(curve);
  final hashedPublicKey = hash(keypair.publicKey, algo: hashAlgo);
  return uint8ListToHex(
    concatUint8List(<Uint8List>[
      Uint8List.fromList(<int>[curveID]),
      hashedPublicKey,
    ]),
  );
}

/// Create a hash digest from the [content] with a hash algorithm identification prepending the digest.
///
/// - [content] : Data to hash (String or Uint8List). If String, [isContentHexa] determines its format.
/// - [algo] : Hash algorithm (default: 'sha256'). Supported: "sha256", "sha512", "sha3-256", "sha3-512", "blake2b".
/// - [isContentHexa] : Whether the provided [content] (if it's a String) is a hexadecimal string (default: true).
Uint8List hash(
  final content, {
  final String algo = 'sha256',
  final bool isContentHexa = true,
}) {
  if (content is! List<int> && content is! String) {
    throw "'content' must be a string or Uint8List";
  }

  Uint8List contentBytes;
  if (content is String) {
    if (isContentHexa && !isHex(content)) {
      throw const FormatException("'content' must be an hexadecimal string");
    }

    contentBytes =
        isContentHexa ? hexToUint8List(content) : utf8.encode(content);
  } else {
    contentBytes = content;
  }

  final algoID = hashAlgoToID(algo);
  final digest = getHashDigest(contentBytes, algo);

  return concatUint8List(<Uint8List>[
    Uint8List.fromList(<int>[algoID]),
    digest,
  ]);
}

/// Computes the raw hash digest for the given [content] using the specified [algo].
/// This is an internal helper for [hash] and does not prepend the algorithm ID.
Uint8List getHashDigest(final content, final algo) {
  switch (algo) {
    case 'sha256':
      final sha256 = Digest('SHA-256');
      return sha256.process(Uint8List.fromList(content));
    case 'sha512':
      final sha512 = Digest('SHA-512');
      return sha512.process(Uint8List.fromList(content));
    case 'sha3-256':
      final sha3_256 = Digest('SHA3-256');
      return sha3_256.process(Uint8List.fromList(content));
    case 'sha3-512':
      final sha3_512 = Digest('SHA3-512');
      return sha3_512.process(Uint8List.fromList(content));
    case 'blake2b':
      final blake2b = Digest('Blake2b');
      return blake2b.process(Uint8List.fromList(content));
    default:
      throw 'Hash algorithm not supported';
  }
}

/// Generate a keypair using a derivation function with a [seed] and an [index].
/// Each key in the pair is prepended with a curve identification and origin ID.
///
/// - [seed] : Keypair derivation seed (hex string by default).
/// - [index] : Number to identify the order of keys to generate (must be positive).
/// - [curve] : Elliptic curve to use (default: 'ed25519'). Supported: "P256", "secp256k1", "ed25519".
/// - [isSeedHexa] : Whether the provided [seed] is a hexadecimal string (default: true).
/// - [originId] : Origin id of the public key (default: [softwareId]). Example values: 0 (on-chain wallet), 1 (software), 2 (TPM).
KeyPair deriveKeyPair(
  final String seed,
  final int index, {
  final String curve = 'ed25519',
  final bool isSeedHexa = true,
  final int originId = softwareId,
}) {
  if (index < 0) {
    throw "index' must be a positive number";
  }

  final pvBuf = derivePrivateKey(seed, index, isSeedHexa: isSeedHexa);
  return generateDeterministicKeyPair(pvBuf, curve, originId);
}

/// Generate a new keypair deterministically with a given private key bytes [pvKey], [curve] name, and [originID].
/// Keys are prepended with curve and origin IDs.
///
/// - [pvKey] : Raw private key bytes.
/// - [curve] : Elliptic curve name. Supported: "P256", "secp256k1", "ed25519".
/// - [originID] : Origin identification for the key.
KeyPair generateDeterministicKeyPair(
  final Uint8List pvKey,
  final String curve,
  final int originID,
) {
  final curveID = curveToID(curve);
  final keyPair = getKeypair(pvKey, curve);
  return KeyPair(
    privateKey: concatUint8List(<Uint8List>[
      Uint8List.fromList(<int>[curveID]),
      Uint8List.fromList(<int>[originID]),
      Uint8List.fromList(keyPair.privateKey!),
    ]),
    publicKey: concatUint8List(<Uint8List>[
      Uint8List.fromList(<int>[curveID]),
      Uint8List.fromList(<int>[originID]),
      Uint8List.fromList(keyPair.publicKey!),
    ]),
  );
}

/// Generates a [KeyPair] (raw private and public keys) from raw private key bytes [pvKey] for the specified [curve].
/// This is an internal helper and does not prepend any IDs.
KeyPair getKeypair(final Uint8List pvKey, final String curve) {
  switch (curve) {
    case 'ed25519':
      final signingKey = ed25519.SigningKey(seed: pvKey);
      final pubBuf = signingKey.publicKey.toUint8List();
      return KeyPair(privateKey: pvKey, publicKey: pubBuf);
    case 'P256':
      final ec = elliptic.getP256();
      final privateKey = elliptic.PrivateKey.fromBytes(ec, pvKey);
      final publicKey = ec.privateToPublicKey(privateKey);
      return KeyPair(
        privateKey: pvKey,
        publicKey: hexToUint8List(publicKey.toHex()),
      );
    case 'secp256k1':
      final ec = elliptic.getSecp256k1();
      final privateKey = elliptic.PrivateKey.fromBytes(ec, pvKey);
      final publicKey = ec.privateToPublicKey(privateKey);
      return KeyPair(
        privateKey: pvKey,
        publicKey: hexToUint8List(publicKey.toHex()),
      );
    default:
      throw 'Curve not supported';
  }
}

/// Sign the [data] using the [privateKey].
///
/// The private key should be in the library's format (prepended with curve ID and origin ID).
/// - [data] : Data to sign (String or Uint8List). If String, [isDataHexa] determines its format.
/// - [privateKey] : Private key for signing (String or Uint8List). If String, [isPrivateKeyHexa] determines its format.
/// - [isDataHexa] : Whether the [data] (if String) is hex encoded (default: true).
/// - [isPrivateKeyHexa] : Whether the [privateKey] (if String) is hex encoded (default: true).
/// Returns the signature as [Uint8List].
Uint8List sign(
  final data,
  final privateKey, {
  final bool isDataHexa = true,
  final bool isPrivateKeyHexa = true,
}) {
  if (data is! Uint8List && data is! String) {
    throw "'data' must be a string or Uint8List";
  }

  if (privateKey is! List<int> && privateKey is! String) {
    throw "'privateKey' must be a string or Uint8List";
  }

  Uint8List dataBytes;
  Uint8List privateKeyBytes;
  if (data is String) {
    if (isDataHexa && !isHex(data)) {
      throw const FormatException("'data' must be an hexadecimal string");
    }

    if (isDataHexa) {
      dataBytes = Uint8List.fromList(hexToUint8List(data));
    } else {
      dataBytes = Uint8List.fromList(utf8.encode(data));
    }
  } else {
    dataBytes = data;
  }

  if (privateKey is String) {
    if (isPrivateKeyHexa && !isHex(privateKey)) {
      throw const FormatException("'privateKey' must be an hexadecimal string");
    }

    if (isPrivateKeyHexa) {
      privateKeyBytes = Uint8List.fromList(hexToUint8List(privateKey));
    } else {
      privateKeyBytes = Uint8List.fromList(utf8.encode(privateKey));
    }
  } else {
    privateKeyBytes = privateKey;
  }

  final curveBuf = Uint8List.fromList(privateKeyBytes.sublist(0, 1));
  final pvBuf = Uint8List.fromList(
    privateKeyBytes.sublist(2, privateKeyBytes.length),
  );

  switch (curveBuf[0]) {
    case 0:
      final signingKey = ed25519.SigningKey(seed: pvBuf);
      final sm = signingKey.sign(dataBytes).signature;
      return Uint8List.fromList(sm);
    case 1:
      final sha256 = Digest('SHA-256');
      final msgHash = sha256.process(dataBytes);
      final ec = elliptic.getP256();
      final privateKey = elliptic.PrivateKey.fromBytes(ec, pvBuf);
      final sig = ecdsa.deterministicSign(privateKey, msgHash);
      return Uint8List.fromList(sig.toDER());
    case 2:
      final sha256 = Digest('SHA-256');
      final msgHash = sha256.process(dataBytes);

      final ec = elliptic.getSecp256k1();
      final privateKey = elliptic.PrivateKey.fromBytes(ec, pvBuf);
      final sig = ecdsa.deterministicSign(privateKey, msgHash);
      return Uint8List.fromList(sig.toDER());
    default:
      throw 'Curve not supported';
  }
}

/// Verify the [sig] (signature) of [data] using the [publicKey].
///
/// The public key should be in the library's format (prepended with curve ID and origin ID).
/// - [sig] : Signature to verify (String or Uint8List). If String, [isSigHexa] determines its format.
/// - [data] : Data that was signed (String or Uint8List). If String, [isDataHexa] determines its format.
/// - [publicKey] : Public key for verification (String or Uint8List). If String, [isPublicKeyHexa] determines its format.
/// - [isSigHexa] : Whether the [sig] (if String) is hex encoded (default: true).
/// - [isDataHexa] : Whether the [data] (if String) is hex encoded (default: true).
/// - [isPublicKeyHexa] : Whether the [publicKey] (if String) is hex encoded (default: true).
/// Returns true if the signature is valid, false otherwise.
bool verify(
  final sig,
  final data,
  final publicKey, {
  final bool isSigHexa = true,
  final bool isDataHexa = true,
  final bool isPublicKeyHexa = true,
}) {
  if (sig is! Uint8List && sig is! String) {
    throw "'sig' must be a string or Uint8List";
  }

  if (data is! Uint8List && data is! String) {
    throw "'data' must be a string or Uint8List";
  }

  if (publicKey is! List<int> && publicKey is! String) {
    throw "'publicKey' must be a string or Uint8List";
  }

  Uint8List sigBytes;
  Uint8List dataBytes;
  Uint8List publicKeyBytes;
  if (sig is String) {
    if (isSigHexa && !isHex(sig)) {
      throw const FormatException("'sig' must be an hexadecimal string");
    }

    if (isSigHexa) {
      sigBytes = Uint8List.fromList(hexToUint8List(sig));
    } else {
      throw "'signature' must be an hexadecimal string";
    }
  } else {
    sigBytes = sig;
  }

  if (data is String) {
    if (isDataHexa && !isHex(data)) {
      throw const FormatException("'data' must be an hexadecimal string");
    }

    if (isDataHexa) {
      dataBytes = Uint8List.fromList(hexToUint8List(data));
    } else {
      dataBytes = Uint8List.fromList(utf8.encode(data));
    }
  } else {
    dataBytes = data;
  }

  if (publicKey is String) {
    if (isPublicKeyHexa && !isHex(publicKey)) {
      throw const FormatException("'publicKey' must be an hexadecimal string");
    }

    if (isPublicKeyHexa) {
      publicKeyBytes = Uint8List.fromList(hexToUint8List(publicKey));
    } else {
      throw "'publicKey' must be an hexadecimal string";
    }
  } else {
    publicKeyBytes = publicKey;
  }

  final curveBuf = Uint8List.fromList(publicKeyBytes.sublist(0, 1));
  final pubBuf = Uint8List.fromList(
    publicKeyBytes.sublist(2, publicKeyBytes.length),
  );

  switch (curveBuf[0]) {
    case 0:
      final verifyKey = ed25519.VerifyKey(pubBuf);
      return verifyKey.verify(
        signature: ed25519.Signature(sigBytes),
        message: dataBytes,
      );
    case 1:
      final sha256 = Digest('SHA-256');
      final msgHash = sha256.process(dataBytes);

      final ec = elliptic.getP256();
      final publicKey = elliptic.PublicKey.fromHex(ec, uint8ListToHex(pubBuf));
      final signature = ecdsa.Signature.fromASN1(sigBytes);
      return ecdsa.verify(publicKey, msgHash, signature);
    case 2:
      final sha256 = Digest('SHA-256');
      final msgHash = sha256.process(dataBytes);

      final ec = elliptic.getSecp256k1();
      final publicKey = elliptic.PublicKey.fromHex(ec, uint8ListToHex(pubBuf));
      final signature = ecdsa.Signature.fromASN1(sigBytes);
      return ecdsa.verify(publicKey, msgHash, signature);

    default:
      throw 'Curve not supported';
  }
}

/// Encrypt [data] for a given [publicKey] using the ECIES (Elliptic Curve Integrated Encryption Scheme) algorithm.
///
/// The public key should be in the library's format (prepended with curve ID and origin ID).
/// - [data] : Data to encrypt (String or Uint8List). If String, [isDataHexa] determines its format.
/// - [publicKey] : Public key for encryption (String or Uint8List). If String, [isPublicKeyHexa] determines its format.
/// - [isDataHexa] : Whether the [data] (if String) is hex encoded (default: true).
/// - [isPublicKeyHexa] : Whether the [publicKey] (if String) is hex encoded (default: true).
/// Returns the encrypted data as [Uint8List], typically containing ephemeral public key, tag, and ciphertext.
Uint8List ecEncrypt(
  final data,
  final publicKey, {
  final bool isDataHexa = true,
  final bool isPublicKeyHexa = true,
}) {
  if (data is! Uint8List && data is! String) {
    throw "'data' must be a string or Uint8List";
  }

  if (publicKey is! List<int> && publicKey is! String) {
    throw "'publicKey' must be a string or Uint8List";
  }

  Uint8List dataBytes;
  Uint8List publicKeyBytes;
  if (data is String) {
    if (isDataHexa && !isHex(data)) {
      throw const FormatException("'data' must be an hexadecimal string");
    }

    if (isDataHexa) {
      dataBytes = Uint8List.fromList(hexToUint8List(data));
    } else {
      dataBytes = Uint8List.fromList(utf8.encode(data));
    }
  } else {
    dataBytes = data;
  }

  if (publicKey is String) {
    if (isPublicKeyHexa && !isHex(publicKey)) {
      throw const FormatException("'publicKey' must be an hexadecimal string");
    }

    if (isPublicKeyHexa) {
      publicKeyBytes = Uint8List.fromList(hexToUint8List(publicKey));
    } else {
      throw "'publicKey' must be an hexadecimal string";
    }
  } else {
    publicKeyBytes = publicKey;
  }

  final curveBuf = Uint8List.fromList(publicKeyBytes.sublist(0, 1));
  final pubBuf = Uint8List.fromList(
    publicKeyBytes.sublist(2, publicKeyBytes.length),
  );

  switch (curveBuf[0]) {
    case 0:
      final keyPair = x25519.generateKeyPair();
      final ephemeralPrivateKey = Uint8List.fromList(keyPair.privateKey);
      final ephemeralPublicKey = Uint8List.fromList(keyPair.publicKey);

      final curve25519Pub = Uint8List(32);
      tweetnacl.TweetNaClExt.crypto_sign_ed25519_pk_to_x25519_pk(
        curve25519Pub,
        pubBuf,
      );

      final sharedKey = x25519.X25519(ephemeralPrivateKey, curve25519Pub);

      final secret = deriveSecret(sharedKey);
      final aesAuthEncryptInfos = aesAuthEncrypt(
        dataBytes,
        Uint8List.fromList(secret.aesKey!),
        Uint8List.fromList(secret.iv!),
      );

      return concatUint8List(<Uint8List>[
        ephemeralPublicKey,
        Uint8List.fromList(aesAuthEncryptInfos.tag!),
        Uint8List.fromList(aesAuthEncryptInfos.encrypted!),
      ]);
    case 1:
      final ec = elliptic.getP256();
      final privateKey_ = ec.generatePrivateKey();
      final publicKey_ = elliptic.PublicKey.fromHex(ec, uint8ListToHex(pubBuf));
      final sharedKey = Uint8List.fromList(
        ecdh.computeSecret(privateKey_, publicKey_),
      );
      final secret = deriveSecret(sharedKey);
      final aesAuthEncryptInfos = aesAuthEncrypt(
        dataBytes,
        Uint8List.fromList(secret.aesKey!),
        Uint8List.fromList(secret.iv!),
      );
      return concatUint8List(<Uint8List>[
        Uint8List.fromList(hexToUint8List(privateKey_.publicKey.toHex())),
        Uint8List.fromList(aesAuthEncryptInfos.tag!),
        Uint8List.fromList(aesAuthEncryptInfos.encrypted!),
      ]);

    case 2:
      final ec = elliptic.getSecp256k1();
      final privateKey_ = ec.generatePrivateKey();
      final publicKey_ = elliptic.PublicKey.fromHex(ec, uint8ListToHex(pubBuf));
      final sharedKey = Uint8List.fromList(
        ecdh.computeSecret(privateKey_, publicKey_),
      );
      final secret = deriveSecret(sharedKey);
      final aesAuthEncryptInfos = aesAuthEncrypt(
        dataBytes,
        Uint8List.fromList(secret.aesKey!),
        Uint8List.fromList(secret.iv!),
      );
      return concatUint8List(<Uint8List>[
        Uint8List.fromList(hexToUint8List(privateKey_.publicKey.toHex())),
        Uint8List.fromList(aesAuthEncryptInfos.tag!),
        Uint8List.fromList(aesAuthEncryptInfos.encrypted!),
      ]);

    default:
      throw 'Curve not supported';
  }
}

/// Decrypt [cipherText] for a given [privateKey] using the ECIES algorithm.
///
/// The private key should be in the library's format (prepended with curve ID and origin ID).
/// - [cipherText] : Ciphertext to decrypt (String or Uint8List). If String, [isCipherTextHexa] determines its format.
/// - [privateKey] : Private key for decryption (String or Uint8List). If String, [isPrivateKeyHexa] determines its format.
/// - [isCipherTextHexa] : Whether the [cipherText] (if String) is hex encoded (default: true).
/// - [isPrivateKeyHexa] : Whether the [privateKey] (if String) is hex encoded (default: true).
/// Returns the decrypted data as [Uint8List].
Uint8List ecDecrypt(
  final cipherText,
  final privateKey, {
  final bool isCipherTextHexa = true,
  final bool isPrivateKeyHexa = true,
}) {
  if (cipherText is! Uint8List && cipherText is! String) {
    throw "'cipherText' must be a string or Uint8List";
  }

  if (privateKey is! List<int> && privateKey is! String) {
    throw "'publicKey' must be a string or Uint8List";
  }

  Uint8List cipherTextBytes;
  Uint8List privateKeyBytes;
  if (cipherText is String) {
    if (isCipherTextHexa && !isHex(cipherText)) {
      throw const FormatException("'cipherText' must be an hexadecimal string");
    }

    if (isCipherTextHexa) {
      cipherTextBytes = Uint8List.fromList(hexToUint8List(cipherText));
    } else {
      cipherTextBytes = Uint8List.fromList(utf8.encode(cipherText));
    }
  } else {
    cipherTextBytes = cipherText;
  }

  if (privateKey is String) {
    if (isPrivateKeyHexa && !isHex(privateKey)) {
      throw const FormatException("'privateKey' must be an hexadecimal string");
    }

    if (isPrivateKeyHexa) {
      privateKeyBytes = Uint8List.fromList(hexToUint8List(privateKey));
    } else {
      throw "'privateKey' must be an hexadecimal string";
    }
  } else {
    privateKeyBytes = privateKey;
  }

  final curveBuf = Uint8List.fromList(privateKeyBytes.sublist(0, 1));
  final pvBuf = Uint8List.fromList(
    privateKeyBytes.sublist(2, privateKeyBytes.length),
  );

  switch (curveBuf[0]) {
    case 0:
      final ephemeralPubKey = cipherTextBytes.sublist(0, 32);
      final tag = cipherTextBytes.sublist(32, 32 + 16);
      final encrypted = cipherTextBytes.sublist(
        32 + 16,
        cipherTextBytes.length,
      );

      final curve25519pv = Uint8List(32);
      tweetnacl.TweetNaClExt.crypto_sign_ed25519_sk_to_x25519_sk(
        curve25519pv,
        pvBuf,
      );

      final sharedKey = x25519.X25519(curve25519pv, ephemeralPubKey);
      final secret = deriveSecret(sharedKey);

      return aesAuthDecrypt(
        encrypted,
        Uint8List.fromList(secret.aesKey!),
        Uint8List.fromList(secret.iv!),
        tag,
      );
    case 1:
      final ephemeralPubKey = cipherTextBytes.sublist(0, 65);
      final tag = cipherTextBytes.sublist(65, 65 + 16);
      final encrypted = cipherTextBytes.sublist(
        65 + 16,
        cipherTextBytes.length,
      );
      final ec = elliptic.getP256();
      final privateKey_ = elliptic.PrivateKey.fromBytes(ec, pvBuf);
      final publicKey_ = elliptic.PublicKey.fromHex(
        ec,
        uint8ListToHex(ephemeralPubKey),
      );
      final sharedKey = Uint8List.fromList(
        ecdh.computeSecret(privateKey_, publicKey_),
      );
      final secret = deriveSecret(sharedKey);

      return aesAuthDecrypt(
        encrypted,
        Uint8List.fromList(secret.aesKey!),
        Uint8List.fromList(secret.iv!),
        tag,
      );

    case 2:
      final ephemeralPubKey = cipherTextBytes.sublist(0, 65);
      final tag = cipherTextBytes.sublist(65, 65 + 16);
      final encrypted = cipherTextBytes.sublist(
        65 + 16,
        cipherTextBytes.length,
      );

      final ec = elliptic.getSecp256k1();
      final privateKey_ = elliptic.PrivateKey.fromBytes(ec, pvBuf);
      final publicKey_ = elliptic.PublicKey.fromHex(
        ec,
        uint8ListToHex(ephemeralPubKey),
      );
      final sharedKey = Uint8List.fromList(
        ecdh.computeSecret(privateKey_, publicKey_),
      );
      final secret = deriveSecret(sharedKey);

      return aesAuthDecrypt(
        encrypted,
        Uint8List.fromList(secret.aesKey!),
        Uint8List.fromList(secret.iv!),
        tag,
      );

    default:
      throw 'Curve not supported';
  }
}

/// Encrypt [data] using AES-GCM with the given symmetric [key].
/// - [data] : Data to encrypt (String or Uint8List). If String, [isDataHexa] determines its format.
/// - [key] : Symmetric key for encryption (String or Uint8List). If String, [isKeyHexa] determines its format.
/// - [isDataHexa] : Whether the [data] (if String) is hex encoded (default: true).
/// - [isKeyHexa] : Whether the [key] (if String) is hex encoded (default: true).
/// Returns the encrypted data as [Uint8List], formatted as IV + Authentication Tag + Ciphertext.
Uint8List aesEncrypt(
  final data,
  final key, {
  final bool isDataHexa = true,
  final bool isKeyHexa = true,
}) {
  if (data is! Uint8List && data is! String) {
    throw "'data' must be a string or Uint8List";
  }

  if (key is! Uint8List && key is! String) {
    throw "'key' must be a string or Uint8List";
  }

  Uint8List dataBytes;
  Uint8List keyBytes;
  if (data is String) {
    if (isDataHexa && !isHex(data)) {
      throw const FormatException("'data' must be an hexadecimal string");
    }

    if (isDataHexa) {
      dataBytes = Uint8List.fromList(hexToUint8List(data));
    } else {
      dataBytes = Uint8List.fromList(utf8.encode(data));
    }
  } else {
    dataBytes = data;
  }

  if (key is String) {
    if (isKeyHexa && !isHex(key)) {
      throw const FormatException("'key' must be an hexadecimal string");
    }

    if (isKeyHexa) {
      keyBytes = Uint8List.fromList(hexToUint8List(key));
    } else {
      throw "'key' must be an hexadecimal string";
    }
  } else {
    keyBytes = key;
  }

  final keyPair = crypto_keys.KeyPair.symmetric(
    crypto_keys.SymmetricKey(keyValue: keyBytes),
  );
  final iv = Uint8List.fromList(
    List<int>.generate(12, (final i) => Random.secure().nextInt(256)),
  );
  final encrypter = keyPair.publicKey!.createEncrypter(
    crypto_keys.algorithms.encryption.aes.gcm,
  );
  final v = encrypter.encrypt(dataBytes, initializationVector: iv);

  final result = concatUint8List(<Uint8List>[
    v.initializationVector!,
    v.authenticationTag!,
    v.data,
  ]);
  return result;
}

/// Decrypt [cipherText] using AES-GCM with the given symmetric [key].
/// The [cipherText] is expected to be formatted as IV (12 bytes) + Authentication Tag (16 bytes) + Actual Ciphertext.
/// - [cipherText] : Ciphertext to decrypt (String or Uint8List). If String, [isCipherTextHexa] determines its format.
/// - [key] : Symmetric key for decryption (String or Uint8List). If String, [isKeyHexa] determines its format.
/// - [isCipherTextHexa] : Whether the [cipherText] (if String) is hex encoded (default: true).
/// - [isKeyHexa] : Whether the [key] (if String) is hex encoded (default: true).
/// Returns the decrypted data as [Uint8List].
Uint8List aesDecrypt(
  final cipherText,
  final key, {
  final bool isCipherTextHexa = true,
  final bool isKeyHexa = true,
}) {
  if (cipherText is! Uint8List && cipherText is! String) {
    throw "'cipherText' must be a string or Uint8List";
  }

  if (key is! Uint8List && key is! String) {
    throw "'key' must be a string or Uint8List";
  }

  Uint8List cipherTextBytes;
  Uint8List keyBytes;
  if (cipherText is String) {
    if (isCipherTextHexa && !isHex(cipherText)) {
      throw const FormatException("'cipherText' must be an hexadecimal string");
    }

    if (isCipherTextHexa) {
      cipherTextBytes = Uint8List.fromList(hexToUint8List(cipherText));
    } else {
      throw "'cipherText' must be an hexadecimal string";
    }
  } else {
    cipherTextBytes = cipherText;
  }

  if (key is String) {
    if (isKeyHexa && !isHex(key)) {
      throw const FormatException("'key' must be an hexadecimal string");
    }

    if (isKeyHexa) {
      keyBytes = Uint8List.fromList(hexToUint8List(key));
    } else {
      throw "'key' must be an hexadecimal string";
    }
  } else {
    keyBytes = key;
  }

  final keyPair = crypto_keys.KeyPair.symmetric(
    crypto_keys.SymmetricKey(keyValue: keyBytes),
  );
  final iv = cipherTextBytes.sublist(0, 12);
  final tag = cipherTextBytes.sublist(12, 12 + 16);
  final encrypted = cipherTextBytes.sublist(28, cipherTextBytes.length);
  final encrypter = keyPair.privateKey!.createEncrypter(
    crypto_keys.algorithms.encryption.aes.gcm,
  );
  final decrypted = encrypter.decrypt(
    crypto_keys.EncryptionResult(
      encrypted,
      initializationVector: iv,
      authenticationTag: tag,
    ),
  );

  return decrypted;
}

/// Derives a raw private key from a [seed] and an [index].
///
/// - [seed] : Derivation seed (hex string by default).
/// - [index] : Index for derivation.
/// - [isSeedHexa] : Whether the [seed] (if String) is hex encoded (default: true).
/// Returns the derived private key as [Uint8List] (32 bytes).
Uint8List derivePrivateKey(
  final seed,
  final int index, {
  final bool isSeedHexa = true,
}) {
  Uint8List seedBytes;
  if (seed is String) {
    if (isSeedHexa && !isHex(seed)) {
      throw const FormatException("'seed' must be an hexadecimal string");
    }

    if (isSeedHexa) {
      seedBytes = Uint8List.fromList(hexToUint8List(seed));
    } else {
      seedBytes = Uint8List.fromList(utf8.encode(seed));
    }
  } else {
    seedBytes = seed;
  }

  /// Derive master keys
  final sha512 = Digest('SHA-512');
  final buf = sha512.process(seedBytes);
  final masterKey = buf.sublist(0, 32);
  final masterEntropy = buf.sublist(32, 64);

  /// Derive the final seed
  final hmac = crypto.Hmac(crypto.sha512, masterEntropy);
  final indexBuf = toByteArray(index, length: 4);
  final extendedSeed = concatUint8List(<Uint8List>[masterKey, indexBuf]);
  final digest = hmac.convert(extendedSeed);

  final hmacBuf = Uint8List.fromList(digest.bytes.sublist(0, 32));

  return hmacBuf;
}

/// Derives a [Secret] (containing an AES key and an IV) from a [sharedKey].
///
/// - [sharedKey] : Shared key material (hex string by default).
/// - [isSharedKey] : Whether the [sharedKey] (if String) is hex encoded (default: true).
/// Returns a [Secret] object.
Secret deriveSecret(final sharedKey, {final bool isSharedKey = true}) {
  if (sharedKey is! Uint8List && sharedKey is! String) {
    throw "'sharedKey' must be a string or Uint8List";
  }

  Uint8List sharedKeyBytes;

  if (sharedKey is String) {
    if (isSharedKey && !isHex(sharedKey)) {
      throw const FormatException("'sharedKey' must be an hexadecimal string");
    }

    if (isSharedKey) {
      sharedKeyBytes = Uint8List.fromList(hexToUint8List(sharedKey));
    } else {
      throw "'sharedKey' must be an hexadecimal string";
    }
  } else {
    sharedKeyBytes = sharedKey;
  }

  final sha256 = Digest('SHA-256');
  final pseudoRandomKey = sha256.process(sharedKeyBytes);

  var hmac = crypto.Hmac(crypto.sha256, pseudoRandomKey);
  var digest = hmac.convert(utf8.encode('0'));
  final iv = Uint8List.fromList(digest.bytes.sublist(0, 32));

  hmac = crypto.Hmac(crypto.sha256, iv);
  digest = hmac.convert(utf8.encode('1'));
  final aesKey = Uint8List.fromList(digest.bytes.sublist(0, 32));

  return Secret(iv: iv, aesKey: aesKey);
}

/// Performs AES-GCM authenticated encryption on [data] using [aesKey] and initialization vector [iv].
/// Returns [AesAuthEncryptInfos] containing the authentication tag and the encrypted data.
AesAuthEncryptInfos aesAuthEncrypt(
  final Uint8List data,
  final Uint8List aesKey,
  final Uint8List iv,
) {
  final keyPair = crypto_keys.KeyPair.symmetric(
    crypto_keys.SymmetricKey(keyValue: aesKey),
  );

  final encrypter = keyPair.publicKey!.createEncrypter(
    crypto_keys.algorithms.encryption.aes.gcm,
  );

  final v = encrypter.encrypt(data, initializationVector: iv);

  return AesAuthEncryptInfos(tag: v.authenticationTag, encrypted: v.data);
}

/// Performs AES-GCM authenticated decryption.
/// - [encrypted] : The encrypted data (ciphertext).
/// - [aesKey] : The symmetric AES key.
/// - [iv] : The initialization vector used for encryption.
/// - [tag] : The authentication tag.
/// Returns the decrypted data as [Uint8List].
Uint8List aesAuthDecrypt(
  final Uint8List encrypted,
  final Uint8List aesKey,
  final Uint8List iv,
  final Uint8List tag,
) {
  final keyPair = crypto_keys.KeyPair.symmetric(
    crypto_keys.SymmetricKey(keyValue: aesKey),
  );

  final encrypter = keyPair.publicKey!.createEncrypter(
    crypto_keys.algorithms.encryption.aes.gcm,
  );

  final decrypted = encrypter.decrypt(
    crypto_keys.EncryptionResult(
      encrypted,
      initializationVector: iv,
      authenticationTag: tag,
    ),
  );

  return decrypted;
}
