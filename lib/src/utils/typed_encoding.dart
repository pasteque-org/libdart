import 'dart:convert';
import 'dart:typed_data';

import 'package:archethic_lib_dart/src/utils/utils.dart';
import 'package:archethic_lib_dart/src/utils/varint.dart' as varint;

/// Enum representing the different data types supported by the serialization process.
/// These types are used to tag data during serialization for proper deserialization.
enum DataType {
  /// Represents an integer type.
  typeInt,

  /// Represents a floating-point number type.
  typeFloat,

  /// Represents a string type.
  typeString,

  /// Represents a list type.
  typeList,

  /// Represents a map type.
  typeMap,

  /// Represents a boolean type.
  typeBool,

  /// Represents a null type.
  typeNull,
}

/// Serializes the given [data] into a [Uint8List] (byte array).
///
/// The serialization process first sorts the keys of the object if it's a map-like structure
/// using [sortObjectKeysAsc] to ensure canonical representation.
/// It then uses a versioned serialization scheme.
///
/// - [data]: The data to be serialized. Can be of various types (null, bool, num, String, List, Map, or custom Object with `toJson`).
/// - [version]: The serialization version to use. Defaults to 1.
/// Returns a [Uint8List] containing the serialized data.
/// Throws an [Exception] if an unhandled data type is encountered during serialization (for objects without `toJson`).
Uint8List serialize<T>(final T data, [final int version = 1]) {
  final sortedData = sortObjectKeysAsc(data);

  switch (version) {
    default:
      return doSerializeV1(sortedData);
  }
}

/// Deserializes a [Uint8List] of [encodedData] back into its original Dart object representation.
///
/// It uses a versioned deserialization scheme corresponding to the serialization version.
///
/// - [encodedData]: The [Uint8List] (byte array) containing the serialized data.
/// - [version]: The deserialization version to use, corresponding to the serialization version. Defaults to 1.
/// Returns the deserialized Dart object.
/// Throws a [StateError] if the iterator for encoded data runs out of elements unexpectedly.
/// Throws an [Exception] if an unknown data type tag is encountered.
dynamic deserialize(final Uint8List encodedData, [final int version = 1]) {
  final iter = encodedData.asMap().entries.iterator;

  switch (version) {
    default:
      return doDeserializeV1(iter);
  }
}

/// Performs version 1 serialization of the given [data].
///
/// This function handles the specific serialization logic for each supported data type:
/// - `null`: Serialized as `[DataType.typeNull.index]`.
/// - `bool`: Serialized as `[DataType.typeBool.index, 0 or 1]`.
/// - `int`: Serialized as `[DataType.typeInt.index, sign_byte, varint_encoded_absolute_value]`.
/// - `double` (or `num` that is not `int`): Serialized as `[DataType.typeFloat.index, sign_byte, varint_encoded_bigint_representation]`.
/// - `String`: Serialized as `[DataType.typeString.index, varint_encoded_byte_length, utf8_bytes]`.
/// - `List`: Serialized as `[DataType.typeList.index, varint_encoded_length, serialized_items...]`.
/// - `Map`: Serialized as `[DataType.typeMap.index, varint_encoded_length, serialized_key_value_pairs...]`.
/// - `Object` (with `toJson`): Serialized as a map after calling `toJson()`.
///
/// - [data]: The data to serialize.
/// Returns a [Uint8List] containing the v1 serialized data.
/// Throws an [Exception] if an unhandled data type is encountered (e.g., an object without a `toJson` method).
Uint8List doSerializeV1<T>(final T data) {
  if (data == null) {
    return Uint8List.fromList([DataType.typeNull.index]);
  } else if (data == true) {
    return Uint8List.fromList([DataType.typeBool.index, 1]);
  } else if (data == false) {
    return Uint8List.fromList([DataType.typeBool.index, 0]);
  } else if (data is num) {
    final sign = data >= 0;

    if (data is int) {
      return concatUint8List([
        Uint8List.fromList([DataType.typeInt.index]),
        Uint8List.fromList([if (sign) 1 else 0]),
        varint.serialize(data.abs()),
      ]);
    } else {
      return concatUint8List([
        Uint8List.fromList([DataType.typeFloat.index]),
        Uint8List.fromList([if (sign) 1 else 0]),
        varint.serialize(toBigInt(data.abs())),
      ]);
    }
  } else if (data is String) {
    return concatUint8List([
      Uint8List.fromList([DataType.typeString.index]),
      varint.serialize(byteSize(data)),
      Uint8List.fromList(utf8.encode(data)),
    ]);
  } else if (data is List) {
    final serializedItems = data.map(doSerializeV1);
    return concatUint8List([
      Uint8List.fromList([DataType.typeList.index]),
      varint.serialize(data.length),
      ...serializedItems,
    ]);
  } else if (data is Map) {
    final serializedKeyValues = data.entries.expand((final entry) {
      final key = entry.key;
      final value = entry.value;
      return [doSerializeV1(key), doSerializeV1(value)];
    });

    return concatUint8List([
      Uint8List.fromList([DataType.typeMap.index]),
      varint.serialize(data.length),
      ...serializedKeyValues,
    ]);
  } else {
    final serializedKeyValues = data.tryToJson().entries.expand((final entry) {
      final key = entry.key;
      final value = entry.value;
      return [doSerializeV1(key), doSerializeV1(value)];
    });

    return concatUint8List([
      Uint8List.fromList([DataType.typeMap.index]),
      varint.serialize(data.tryToJson().length),
      ...serializedKeyValues,
    ]);
  }
}

// ignore: comment_references
/// Performs version 1 deserialization using an [iterator] over the encoded bytes.
///
/// Reads the type tag and then deserializes the data accordingly.
///
/// - [iter]: An iterator over `MapEntry<int, int>` representing the byte stream (index and byte value).
/// Returns the deserialized Dart object.
/// Throws a [StateError] if the iterator runs out of elements prematurely.
/// Throws an [Exception] if an unknown data type tag is encountered.
dynamic doDeserializeV1(final Iterator<MapEntry<int, int>> iter) {
  final type = nextUint8(iter);

  switch (DataType.values[type]) {
    case DataType.typeNull:
      return null;
    case DataType.typeBool:
      return nextUint8(iter) == 1;
    case DataType.typeInt:
      return nextUint8(iter) == 1
          ? varint.deserialize(iter)
          : -varint.deserialize(iter);
    case DataType.typeFloat:
      return nextUint8(iter) == 1
          ? fromBigInt(varint.deserialize(iter))
          : -fromBigInt(varint.deserialize(iter));
    case DataType.typeString:
      final strLen = varint.deserialize(iter);

      final bytes = <int>[];
      for (var i = 0; i < strLen; i++) {
        bytes.add(nextUint8(iter));
      }

      return utf8.decode(Uint8List.fromList(bytes));
    case DataType.typeList:
      final listLen = varint.deserialize(iter);

      final list = <dynamic>[];
      for (var i = 0; i < listLen; i++) {
        list.add(doDeserializeV1(iter));
      }

      return list;
    case DataType.typeMap:
      final keysLen = varint.deserialize(iter);

      final map = <dynamic, dynamic>{};
      for (var i = 0; i < keysLen; i++) {
        final key = doDeserializeV1(iter);
        final value = doDeserializeV1(iter);
        map[key] = value;
      }

      return map;
  }
}

/// Calculates the byte size of a UTF-8 encoded string.
///
/// - [str]: The input string.
/// Returns the number of bytes required to represent the string in UTF-8.
int byteSize(final String str) {
  return utf8.encode(str).length;
}

/// Extension on `Object?` to provide a safe way to attempt calling a `toJson()` method.
/// This is used by the serialization logic to handle custom objects that might have a `toJson` method.
extension TryToJsonExtension on Object? {
  /// Attempts to call `toJson()` on the object.
  ///
  /// - If the object is `null`, returns `null`.
  /// - If the object is already a `Map` or `List`, returns the object itself.
  /// - Otherwise, it tries to dynamically call `toJson()`.
  ///
  /// Returns the result of `toJson()`, the object itself if it's a Map/List, or `null`.
  /// Throws an [Exception] if the object is not `null`, not a `Map`/`List`, and does not have a `toJson()` method.
  dynamic tryToJson() {
    if (this == null) {
      return null;
    }

    if (this is Map) {
      return this;
    }
    if (this is List) {
      return this;
    }

    try {
      final dynamic result = (this as dynamic).toJson();
      return result;
    } on Exception {
      throw Exception('Object of type $runtimeType does not implement toJson');
    }
  }
}
