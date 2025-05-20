import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorized_key.freezed.dart';
part 'authorized_key.g.dart';

/// Represents an authorized public key along with an encrypted secret key.
///
/// This structure is typically used in scenarios where a master secret (e.g., a service seed)
/// is encrypted symmetrically, and the symmetric key itself is then encrypted asymmetrically
/// for one or more authorized public keys. Each [AuthorizedKey] object would hold one such
/// public key and the corresponding encrypted symmetric key.
/// The holder of the private key corresponding to this [publicKey] can decrypt the
/// [encryptedSecretKey] to obtain the symmetric key, which then allows access to the master secret.
@freezed
abstract class AuthorizedKey with _$AuthorizedKey {
  /// Creates an [AuthorizedKey] instance.
  ///
  /// The [publicKey] is the public key that is authorized.
  /// The [encryptedSecretKey] is the secret key (e.g., an AES key) that has been encrypted using this [publicKey].
  const factory AuthorizedKey({
    /// The public key (hex-encoded) that is authorized to access a secret.
    final String? publicKey,

    /// The symmetrically encrypted secret key, itself encrypted with the [publicKey].
    /// This allows the owner of the corresponding private key to decrypt this field and obtain the symmetric key.
    final String? encryptedSecretKey,
  }) = _AuthorizedKey;

  /// Private constructor for [AuthorizedKey].
  const AuthorizedKey._();

  /// Creates an [AuthorizedKey] instance from a JSON map.
  factory AuthorizedKey.fromJson(final Map<String, dynamic> json) =>
      _$AuthorizedKeyFromJson(json);
}
