import 'dart:convert';

/// Deserializes a JSON string into an [OriginKeyResponse] object.
///
/// - [str]: The JSON string to parse.
/// Returns an [OriginKeyResponse] instance.
OriginKeyResponse originKeyResponseFromJson(final String str) =>
    OriginKeyResponse.fromJson(json.decode(str) as Map<String, dynamic>);

/// Serializes an [OriginKeyResponse] object into a JSON string.
///
/// - [data]: The [OriginKeyResponse] instance to serialize.
/// Returns a JSON string representation of the object.
String originKeyResponseToJson(final OriginKeyResponse data) =>
    json.encode(data.toJson());

/// Represents the response received after an operation involving an origin key,
/// typically indicating the status of the operation and an associated transaction address.
class OriginKeyResponse {
  /// Creates an [OriginKeyResponse] instance.
  ///
  /// - [status]: The status of the origin key operation (e.g., "success", "pending"). Can be null.
  /// - [transactionAddress]: The address of the transaction related to the origin key operation. Can be null.
  OriginKeyResponse({this.status, this.transactionAddress});

  /// Creates an [OriginKeyResponse] instance from a JSON map.
  ///
  /// Parses 'status' and 'transaction_address' fields from the JSON.
  /// - [json]: The JSON map to deserialize.
  factory OriginKeyResponse.fromJson(final Map<String, dynamic> json) =>
      OriginKeyResponse(
        status: json['status'] as String?,
        transactionAddress: json['transaction_address'] as String?,
      );

  /// The status of the operation related to the origin key. Examples: "success", "pending", "error".
  /// This field can be null if the status is not provided in the response.
  String? status;

  /// The transaction address associated with the origin key operation.
  /// This field can be null if no specific transaction address is returned.
  String? transactionAddress;

  /// Converts this [OriginKeyResponse] instance into a JSON map.
  Map<String, dynamic> toJson() => <String, dynamic>{
    'status': status,
    'transaction_address': transactionAddress,
  };
}
