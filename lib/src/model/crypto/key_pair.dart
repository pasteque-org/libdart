import 'dart:typed_data';

import 'package:archethic_lib_dart/src/utils/uint8List_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_pair.freezed.dart';

/// Represents a pair of cryptographic keys: a private key and its corresponding public key.
///
/// This class is used to store and manage key pairs for asymmetric cryptography.
@freezed
abstract class KeyPair with _$KeyPair {
  /// Creates a [KeyPair] instance.
  ///
  /// The [privateKey] is the private component of the key pair.
  /// The [publicKey] is the public component of the key pair.
  const factory KeyPair({
    /// The private key, stored as a [Uint8List]. This should be kept secret.
    @Uint8ListConverter() final Uint8List? privateKey,

    /// The public key, stored as a [Uint8List]. This can be shared openly.
    @Uint8ListConverter() final Uint8List? publicKey,
  }) = _KeyPair;

  /// Private constructor for [KeyPair].
  const KeyPair._();
}
