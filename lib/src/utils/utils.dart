// ignore_for_file: type_annotate_public_apis, strict_top_level_inference

import 'dart:math';
import 'dart:typed_data';

import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:pinenacl/encoding.dart' show Base16Encoder;

/// The default Initial Origin Private Key for the Archethic network.
/// This key is known and used for specific foundational operations.
const kOriginPrivateKey =
    '01019280BDB84B8F8AEDBA205FE3552689964A5626EE2C60AA10E3BF22A91A036009';

/// Checks if the given [inputString] is a valid hexadecimal string.
///
/// A string is considered hexadecimal if it only contains characters 0-9, a-f, or A-F.
/// Returns `true` if the string is hexadecimal, `false` otherwise.
bool isHex(final String inputString) {
  final hexadecimal = RegExp(r'^([0-9A-Fa-f])*$');
  if (!hexadecimal.hasMatch(inputString)) {
    return false;
  }
  return true;
}

/// Converts a hexadecimal [hexString] into a [Uint8List] of bytes.
///
/// Throws a [FormatException] if the [hexString] is not a valid hexadecimal representation.
Uint8List hexToUint8List(final String hexString) {
  final List<int> bytes = Base16Encoder.instance.decode(hexString);
  return Uint8List.fromList(bytes);
}

/// Converts a [Uint8List] of [bytes] into a hexadecimal string representation.
String uint8ListToHex(final Uint8List bytes) =>
    Base16Encoder.instance.encode(Uint8List.fromList(bytes));

/// Concatenates a list of [Uint8List] objects into a single [Uint8List].
///
/// The elements from the input [list] are expanded and combined in order.
Uint8List concatUint8List(final Iterable<Uint8List> list) =>
    Uint8List.fromList(list.expand((final element) => element).toList());

/// Converts a numeric value [number] to a big integer representation, assuming 10^8 (100 million) decimal places.
///
/// This is often used to handle UCO amounts, where the smallest unit is 10^-8 UCO.
/// If [number] is null, returns 0.
/// Example: `toBigInt(0.15)` would result in `15000000`.
int toBigInt(final num? number) {
  if (number == null) {
    return 0;
  }
  return (Decimal.parse(number.toString()) * Decimal.parse('100000000'))
      .toDouble()
      .floor();
}

/// Converts a big integer [number], representing a value with 10^8 decimal places, back to a numeric type (double).
///
/// This is the inverse of [toBigInt].
/// If [number] is null, returns 0.
/// Example: `fromBigInt(15000000)` would result in `0.15`.
num fromBigInt(final int? number) {
  if (number == null) {
    return 0;
  }
  return (Decimal.parse(number.toString()) / Decimal.parse('100000000'))
      .toDouble();
}

/// Converts an integer [value] into a [Uint8List] (byte array) of a specified [length].
///
/// The conversion is done in big-endian order.
/// If [length] is 0 (default), the minimum number of bytes required to represent the value is used.
/// If [value] is 0 and [length] is 0, returns a list containing a single byte `[0]`.
/// This function does not handle negative numbers; their behavior is undefined.
Uint8List toByteArray(final int value, {final int length = 0}) {
  final byteMask = BigInt.from(0xff);
  var number = BigInt.from(value);
  // Not handling negative numbers. Decide how you want to do that.
  int size;
  if (length > 0) {
    size = length;
  } else {
    size = (number.bitLength + 7) >> 3;
  }
  if (size == 0) {
    return Uint8List.fromList(<int>[0]);
  }

  // ignore: prefer_final_locals
  var result = Uint8List(size);
  for (var i = 0; i < size; i++) {
    result[size - i - 1] = (number & byteMask).toInt();
    number = number >> 8;
  }
  return result;
}

/// Removes the leading underscore (alias prefix) from keys in a map.
///
/// This is useful when processing data from GraphQL responses where aliases might be used.
/// If the input [map] is null, returns null.
/// Null values in the map are omitted from the result.
Map<String, T>? removeAliasPrefix<T>(final Map<String, T?>? map) {
  if (map == null) {
    return null;
  }
  final mapResult = <String, T>{};
  map.forEach((final key, final value) {
    if (value != null) {
      mapResult[key.replaceFirst('_', '')] = value;
    }
  });
  return mapResult;
}

/// Generates a random hexadecimal string of 64 characters to be used as a seed.
///
/// Uses a cryptographically secure random number generator.
String generateRandomSeed() {
  var seed = '';
  const chars = 'abcdef0123456789';
  final rng = Random.secure();
  for (var i = 0; i < 64; i++) {
    // ignore: use_string_buffers
    seed += chars[rng.nextInt(chars.length)];
  }
  return seed;
}

/// Generates a random AES key as a hexadecimal string.
///
/// - [length]: The desired length of the key in bytes. Defaults to 32 bytes (256 bits).
/// Returns a hex-encoded string of the generated random key.
String generateRandomAESKey({final int length = 32}) => uint8ListToHex(
  Uint8List.fromList(
    List<int>.generate(length, (final i) => Random.secure().nextInt(256)),
  ),
);

/// Retrieves the next byte value from an iterator of map entries representing bytes.
///
/// This function assumes the iterator yields `MapEntry<int, int>` where `value` is the byte.
/// Throws a [StateError] if the iterator has no more elements.
/// Primarily used for manual byte-by-byte processing of a Uint8List or similar structure.
int nextUint8(final Iterator<MapEntry<int, int>> iterator) {
  if (iterator.moveNext()) {
    return iterator.current.value;
  } else {
    throw StateError('No more elements in the iterator.');
  }
}

/// Converts a [Uint8List] of [bytes] (assumed to be 4 bytes or less representing a big-endian integer) into an integer.
///
/// Example: `[0, 0, 1, 0]` (representing 256) would be converted to the integer `256`.
int uint8ListToInt(final Uint8List bytes) {
  var value = 0;
  for (var i = 0; i < bytes.length; i++) {
    value = (value * 256) + bytes[i];
  }
  return value;
}

/// Recursively sorts the keys of a given [term] (Map, List, or other types) in ascending order.
///
/// If [term] is a List, it recursively calls `sortObjectKeysAsc` on each element.
/// If [term] is a Map, it creates a new map with keys sorted alphabetically, and recursively sorts the values.
/// If [term] is a MapEntry, it sorts the value part.
/// Other types are returned as is.
/// This is useful for creating canonical representations of JSON-like objects for signing or hashing.
dynamic sortObjectKeysAsc(final term) {
  if (term is List) {
    return term.map(sortObjectKeysAsc).toList();
  } else if (term is Map) {
    // In Dart, maps have keys that are always strings, so we can sort them
    final sortedMap = Map.fromEntries(
      term.entries.toList()..sort((final a, final b) => a.key.compareTo(b.key)),
    );
    return sortedMap.map(
      (final key, final value) => MapEntry(key, sortObjectKeysAsc(value)),
    );
  } else if (term is MapEntry) {
    // MapEntry is Dart specific, so we handle it separately
    return MapEntry(term.key, sortObjectKeysAsc(term.value));
  } else if (term is Map<String, dynamic>) {
    final sortedKeys = term.keys.toList()..sort();
    return Map.fromEntries(
      sortedKeys.map(
        (final key) => MapEntry(key, sortObjectKeysAsc(term[key])),
      ),
    );
  } else {
    return term;
  }
}

/// Recursively removes all null values from a given JSON-like map [json].
///
/// It traverses nested maps and lists, removing entries where the value is null.
/// In lists, null elements are removed, and maps within lists are also processed.
Map<String, dynamic> removeNullValues(final Map<String, dynamic> json) =>
    json
        .map((final key, final value) {
          if (value is Map<String, dynamic>) {
            return MapEntry(key, removeNullValues(value));
          } else if (value is List) {
            return MapEntry(
              key,
              value
                  .map(
                    (final e) =>
                        e is Map<String, dynamic> ? removeNullValues(e) : e,
                  )
                  .where((final e) => e != null)
                  .toList(),
            );
          } else {
            return MapEntry(key, value);
          }
        })
        .entries
        .where((final e) => e.value != null)
        .toMap();

/// Verifies the structure and basic validity of an Archethic public [key] (hex-encoded).
///
/// Checks include:
/// - If the key is a valid hexadecimal string.
/// - If the key has a minimum length (at least 2 bytes for curve and origin IDs).
/// - If the public key buffer length matches the expected length for its specified curve type.
/// - If the origin ID is either 0 or 1.
///
/// Returns `true` if the key appears valid, `false` otherwise.
/// Note: This does not perform cryptographic validation of the key itself.
bool verifyArchethicKey(final String key) {
  if (!isHex(key)) {
    return false;
  }

  // Convert the hexadecimal public key to a byte list
  final pubKeyBytes = hexToUint8List(key);

  // Check that the total length of the public key is sufficient to contain curve and origin information
  if (pubKeyBytes.length < 2) {
    return false;
  }

  final pubKeyBuf = pubKeyBytes.sublist(2, pubKeyBytes.length);

  // Determine the expected length of the public key based on the curve
  int lengthBytes;
  switch (pubKeyBytes[0]) {
    case 0:
      lengthBytes = 32;
    case 1:
    case 2:
      lengthBytes = 65;
    case 3:
      lengthBytes = 48;
    default:
      lengthBytes = -1;
  }

  // Check that the length of the public key matches the expected length
  if (lengthBytes == -1 || pubKeyBuf.lengthInBytes != lengthBytes) {
    return false;
  }

  // Check that the origin is either 0 or 1
  if (pubKeyBytes[1] != 0 && pubKeyBytes[1] != 1) {
    return false;
  }

  // If all checks pass, the public key is valid
  return true;
}

/// Extension on `Iterable<MapEntry<K, V>>` to provide a convenient `toMap()` method.
/// This is primarily used for testing purposes to simplify the creation of maps from iterables of entries.
@visibleForTesting
extension MapExtension<K, V> on Iterable<MapEntry<K, V>> {
  /// Converts an iterable of map entries into a [Map].
  ///
  /// Returns a new [Map] containing the keys and values from the iterable.
  Map<K, V> toMap() => {for (final entry in this) entry.key: entry.value};
}
