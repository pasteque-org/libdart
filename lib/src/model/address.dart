import 'dart:typed_data';

import 'package:archethic_lib_dart/src/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pointycastle/export.dart' show Digest;

part 'address.freezed.dart';

/// The length of a valid address.
const kAddressLength = 68;

/// The possible curve types for an address.
const kCurveType = <int>[0, 1, 2];

/// The possible hash types for an address.
const kHashType = <int>[0, 1, 2, 3, 4];

/// A [JsonConverter] for [Address] objects.
/// Converts an [Address] to and from a JSON string.
class AddressJsonConverter extends JsonConverter<Address, String> {
  /// Creates an [AddressJsonConverter].
  const AddressJsonConverter();

  /// Converts a JSON string to an [Address].
  @override
  Address fromJson(final String json) => Address(address: json);

  /// Converts an [Address] to a JSON string.
  @override
  String toJson(final Address object) => object.address ?? '';
}

/// The [Address] scalar type represents a transaction's address.
///
/// The Address appears in a JSON response as Base16 formatted string.
/// The parsed address will be converted to a binary and any invalid address
/// with an invalid algorithm or invalid size will be rejected
@freezed
abstract class Address with _$Address {
  /// Creates an [Address] instance.
  ///
  /// The [address] parameter is an optional string representing the address.
  const factory Address({final String? address}) = _Address;

  /// Private constructor for [Address].
  const Address._();

  /// Verifies the structure of an address.
  ///
  /// Returns `true` if the address is valid, `false` otherwise.
  /// An address is considered valid if:
  /// - It is not null.
  /// - Its length is equal to [kAddressLength].
  /// - It is a hexadecimal string.
  /// - The curve type (first 2 characters) is one of '00', '01', or '02'.
  /// - The hash type (next 2 characters) corresponds to a known digest algorithm
  ///   and the remaining part of the address matches the expected digest size.
  bool isValid() {
    if (address == null) {
      return false;
    }
    if (address!.length != kAddressLength) {
      return false;
    }
    if (address!.length >= 4 && isHex(address!)) {
      final curveType = address!.substring(0, 2);
      if (curveType != '00' && curveType != '01' && curveType != '02') {
        return false;
      }
      var digestSize = 0;
      switch (address!.substring(2, 4)) {
        /// 00 = sha256
        case '00':
          digestSize = Digest('SHA-256').digestSize;

        /// 01 = sha512
        case '01':
          digestSize = Digest('SHA-512').digestSize;

        /// 02 = sha3-256
        case '02':
          digestSize = Digest('SHA3-256').digestSize;

        /// 03 = sha3-512
        case '03':
          digestSize = Digest('SHA3-512').digestSize;

        /// 04 = blake2b
        case '04':
          digestSize = Digest('Blake2b').digestSize;
        default:
          return false;
      }
      try {
        if (Uint8List.fromList(hexToUint8List(address!.substring(4))).length !=
            digestSize) {
          return false;
        } else {
          return true;
        }
      } catch (e) {
        return false;
      }
    } else {
      return false;
    }
  }
}
