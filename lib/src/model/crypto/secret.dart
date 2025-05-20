import 'dart:typed_data';
import 'package:archethic_lib_dart/src/utils/uint8List_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'secret.freezed.dart';

/// Represents a cryptographic secret, typically containing an AES key and an Initialization Vector (IV).
///
/// This class is used to encapsulate components necessary for symmetric encryption operations.
@freezed
abstract class Secret with _$Secret {
  /// Creates a [Secret] instance.
  ///
  /// The [iv] is the Initialization Vector.
  /// The [aesKey] is the AES symmetric key.
  const factory Secret({
    /// The Initialization Vector (IV) for AES encryption, stored as a [Uint8List].
    @Uint8ListConverter() final Uint8List? iv,

    /// The AES symmetric key, stored as a [Uint8List].
    @Uint8ListConverter() final Uint8List? aesKey,
  }) = _Secret;
}
