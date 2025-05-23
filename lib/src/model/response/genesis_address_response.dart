import 'package:archethic_lib_dart/src/model/address.dart';

/// Represents the data structure for a response containing a genesis address.
///
/// This is typically used when querying an endpoint that returns the genesis address
/// of a chain or a specific entity.
class GenesisAddressResponseData {
  /// Creates a [GenesisAddressResponseData] instance.
  ///
  /// The [address] parameter holds the genesis address.
  GenesisAddressResponseData({this.address});

  /// Creates a [GenesisAddressResponseData] instance from a JSON map.
  ///
  /// Expects the JSON to have a key 'genesisAddress' containing the address string.
  factory GenesisAddressResponseData.fromJson(
    final Map<String, dynamic> json,
  ) => GenesisAddressResponseData(
    address: Address(address: json['genesisAddress'] as String?),
  );

  /// The genesis address.
  Address? address;

  /// Converts this [GenesisAddressResponseData] object to a JSON map.
  Map<String, dynamic> toJson() => <String, dynamic>{
    'genesisAddress': address?.address ?? '',
  };
}
