import 'package:archethic_lib_dart/src/model/authorized_key.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ownership.freezed.dart';
part 'ownership.g.dart';

/// Represents an ownership structure, typically used in contexts where a [secret]
/// needs to be encrypted and made accessible only to a list of [authorizedPublicKeys].
///
/// This is often used in secure data storage or sharing mechanisms within the Archethic network.
@freezed
abstract class Ownership with _$Ownership {
  /// Creates an instance of [Ownership].
  ///
  /// - [authorizedPublicKeys]: A list of [AuthorizedKey] objects.
  ///   Each [AuthorizedKey] specifies a public key that is permitted to decrypt the [secret].
  ///   Defaults to an empty list.
  /// - [secret]: The encrypted secret or a reference to it. This can be null if not yet set or applicable.
  const factory Ownership({
    /// A list of public keys that are authorized to access or decrypt the [secret].
    @Default([]) final List<AuthorizedKey> authorizedPublicKeys,

    /// The encrypted secret data or a pointer/reference to it. Can be null.
    final String? secret,
  }) = _Ownership;

  /// Private constructor for `freezed` compatibility.
  const Ownership._();

  /// Creates an [Ownership] instance from a JSON map.
  ///
  /// This factory uses the `freezed` generated `_$OwnershipFromJson` function
  /// to deserialize the JSON data.
  factory Ownership.fromJson(final Map<String, dynamic> json) =>
      _$OwnershipFromJson(json);
}
