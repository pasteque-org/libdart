import 'package:freezed_annotation/freezed_annotation.dart';

part 'service.freezed.dart';
part 'service.g.dart';

/// Represents a cryptographic service configuration, typically associated with a key or account.
///
/// This class defines the parameters for a service, including its derivation path,
/// the cryptographic curve to be used, and the hash algorithm.
@freezed
abstract class Service with _$Service {
  /// Creates an instance of [Service].
  ///
  /// - [derivationPath]: The hierarchical derivation path for the key associated with this service. This is a required field.
  /// - [curve]: The cryptographic curve to be used. Defaults to 'ed25519'.
  /// - [hashAlgo]: The hash algorithm to be used. Defaults to 'sha256'.
  const factory Service({
    /// The derivation path used to generate or identify the key for this service.
    /// This follows a standard hierarchical deterministic wallet path format.
    required final String derivationPath,

    /// The cryptographic curve used for key generation and operations (e.g., 'ed25519', 'secp256k1').
    /// Defaults to 'ed25519'.
    @Default('ed25519') final String curve,

    /// The hash algorithm used in conjunction with this service (e.g., 'sha256', 'keccak256').
    /// Defaults to 'sha256'.
    @Default('sha256') final String hashAlgo,
  }) = _Service;

  /// Private constructor for `freezed` compatibility.
  const Service._();

  /// Creates a [Service] instance from a JSON map.
  factory Service.fromJson(final Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}
