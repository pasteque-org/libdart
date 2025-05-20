import 'dart:typed_data';

import 'package:archethic_lib_dart/src/utils/utils.dart';

/// Serializes an integer [value] into a custom variable-length integer format.
///
/// The format consists of:
/// - A single byte representing the length (L) of the subsequent integer bytes.
/// - L bytes representing the integer value in big-endian order.
///
/// This is a simple varint scheme, not to be confused with other standard varint encodings like Protocol Buffers' varint.
///
/// - [value]: The integer to serialize.
/// Returns a [Uint8List] containing the serialized varint.
Uint8List serialize(final int value) {
  final byteBuffer = toByteArray(
    value,
  ); // Converts int to big-endian byte array
  final length = byteBuffer.length;

  return concatUint8List(<Uint8List>[
    Uint8List.fromList([length]), // Prepend the length byte
    byteBuffer, // Append the integer bytes
  ]);
}

/// Deserializes a custom variable-length integer from a byte [iterator].
///
/// This function reads bytes from the provided [iterator] according to the custom varint format:
/// - Reads the first byte as the length (L) of the integer data.
/// - Reads the next L bytes which represent the integer in big-endian order.
/// - Converts these L bytes back into an integer.
///
/// - [iterator]: An [Iterator<MapEntry<int, int>>] providing the byte stream.
///   Each `MapEntry` is assumed to have the byte value in `entry.value`.
///   The iterator is advanced by this function.
/// Returns the deserialized integer.
/// Throws a [StateError] if the iterator runs out of bytes prematurely (via `nextUint8`).
int deserialize(final Iterator<MapEntry<int, int>> iterator) {
  final length = nextUint8(iterator); // Read the length byte

  final bytes = <int>[];
  for (var i = 0; i < length; i++) {
    bytes.add(nextUint8(iterator)); // Read the integer bytes
  }

  return uint8ListToInt(Uint8List.fromList(bytes)); // Convert bytes to int
}
