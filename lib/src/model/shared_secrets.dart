import 'package:freezed_annotation/freezed_annotation.dart';

part 'shared_secrets.freezed.dart';
part 'shared_secrets.g.dart';

/// Represents public shared secret information, typically used for encryption purposes
/// in interactions with other parties (e.g., nodes for smart contract authorized keys).
@freezed
abstract class SharedSecrets with _$SharedSecrets {
  /// Creates an instance of [SharedSecrets].
  ///
  /// - [storageNoncePublicKey]: The public key used for encrypting data intended for a storage node or similar entity.
  ///   This key allows the entity to decrypt the data. Can be null if not applicable.
  const factory SharedSecrets({
    /// The storage nonce public key. This public key is used to encrypt data
    /// specifically for a node (or other designated party), enabling them to decrypt it.
    /// This is often relevant for operations like setting authorized keys for smart contracts.
    /// Can be null if this information is not available or not set.
    final String? storageNoncePublicKey,
  }) = _SharedSecrets;

  /// Private constructor for `freezed` compatibility.
  const SharedSecrets._();

  /// Creates a [SharedSecrets] instance from a JSON map.
  ///
  /// Note: This factory expects the actual `SharedSecrets` data to be nested
  /// under a 'sharedSecrets' key within the input [json] map.
  /// For example: `{"sharedSecrets": {"storageNoncePublicKey": "..."}}`
  ///
  /// - [json]: The JSON map containing the 'sharedSecrets' object.
  /// Throws if `json['sharedSecrets']` is not a Map or is null.
  factory SharedSecrets.fromJson(final Map<String, dynamic> json) =>
      _$SharedSecretsFromJson(json['sharedSecrets'] as Map<String, dynamic>);
}
