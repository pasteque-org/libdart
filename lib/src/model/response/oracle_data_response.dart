import 'dart:convert';

import 'package:archethic_lib_dart/src/model/uco.dart';

/// Deserializes a JSON string into an [OracleDataResponse] object.
///
/// This function is a utility to directly parse a JSON string representation
/// of oracle data into its corresponding Dart model.
///
/// - [str]: The JSON string to parse.
/// Returns an [OracleDataResponse] instance.
/// Throws a [FormatException] if the string is not valid JSON, or a [TypeError]
/// if the JSON structure does not match the expected format.
OracleDataResponse oracleDataResponseFromJson(final String str) =>
    OracleDataResponse.fromJson(json.decode(str) as Map<String, dynamic>);

/// Serializes an [OracleDataResponse] object into a JSON string.
///
/// This function is a utility to convert an [OracleDataResponse] Dart model
/// into its JSON string representation.
///
/// - [data]: The [OracleDataResponse] instance to serialize.
/// Returns a JSON string representation of the object.
String oracleDataResponseToJson(final OracleDataResponse data) =>
    json.encode(data.toJson());

/// Represents the top-level structure of a response from an oracle data endpoint.
///
/// It primarily serves as a container for the [OracleData] object.
class OracleDataResponse {
  /// Creates an [OracleDataResponse] instance.
  ///
  /// - [data]: An optional [OracleData] object containing the core oracle information.
  ///           This can be null if the response does not contain data or if an error occurred.
  OracleDataResponse({this.data});

  /// Creates an [OracleDataResponse] instance from a JSON map.
  ///
  /// It expects the JSON map to contain a 'data' key, whose value is another
  /// JSON map representing the [OracleData] object.
  ///
  /// - [json]: The JSON map to deserialize.
  /// Returns an [OracleDataResponse] instance. If the 'data' key is missing or its value is null,
  /// the [data] field of the returned object will be null.
  factory OracleDataResponse.fromJson(final Map<String, dynamic> json) =>
      OracleDataResponse(
        data:
            json['data'] == null
                ? null
                : OracleData.fromJson(json['data'] as Map<String, dynamic>),
      );

  /// The core oracle data payload. This can be null if the response is empty or indicates an error.
  OracleData? data;

  /// Converts this [OracleDataResponse] instance into a JSON map.
  ///
  /// The resulting map will have a single key 'data', whose value is the JSON representation
  /// of the [data] field. If [data] is null, the value for 'data' in the map will also be null.
  ///
  /// Returns a JSON-compatible map.
  Map<String, dynamic> toJson() => {'data': data?.toJson()};
}

/// Represents the main container for the specific oracle data, often nested within [OracleDataResponse].
class OracleData {
  /// Creates an [OracleData] instance.
  ///
  /// - [oracleData]: An optional [OracleDataClass] object which holds the actual oracle readings
  ///                 (like service prices and timestamps).
  OracleData({this.oracleData});

  /// Creates an [OracleData] instance from a JSON map.
  ///
  /// It expects the JSON map to contain an 'oracleData' key, whose value is a JSON map
  /// representing the [OracleDataClass] object.
  ///
  /// - [json]: The JSON map to deserialize.
  /// Returns an [OracleData] instance. If 'oracleData' is missing or null,
  /// the [oracleData] field will be null.
  factory OracleData.fromJson(final Map<String, dynamic> json) => OracleData(
    oracleData:
        json['oracleData'] == null
            ? null
            : OracleDataClass.fromJson(
              json['oracleData'] as Map<String, dynamic>,
            ),
  );

  /// The specific oracle data payload. This can be null.
  OracleDataClass? oracleData;

  /// Converts this [OracleData] instance into a JSON map.
  ///
  /// The resulting map will have a single key 'oracleData', whose value is the JSON representation
  /// of the [oracleData] field. If [oracleData] is null, the value for 'oracleData' will be null.
  ///
  /// Returns a JSON-compatible map.
  Map<String, dynamic> toJson() => {'oracleData': oracleData?.toJson()};
}

/// Represents the actual data provided by the oracle, including service-specific information and a timestamp.
class OracleDataClass {
  /// Creates an [OracleDataClass] instance.
  ///
  /// - [services]: An optional [OracleServices] object detailing service-specific data, like UCO prices.
  /// - [timestamp]: An optional Unix timestamp (seconds since epoch) indicating when the oracle data was generated or valid.
  OracleDataClass({this.services, this.timestamp});

  /// Creates an [OracleDataClass] instance from a JSON map.
  ///
  /// Parses 'services' into an [OracleServices] object and 'timestamp' into an integer.
  ///
  /// - [json]: The JSON map to deserialize.
  /// Returns an [OracleDataClass] instance. Fields will be null if corresponding keys are missing or null in JSON.
  factory OracleDataClass.fromJson(final Map<String, dynamic> json) =>
      OracleDataClass(
        services:
            json['services'] == null
                ? null
                : OracleServices.fromJson(
                  json['services'] as Map<String, dynamic>,
                ),
        timestamp: json['timestamp'] as int?,
      );

  /// Contains data for specific services monitored by the oracle (e.g., UCO prices).
  /// Can be null if no service data is included.
  OracleServices? services;

  /// The Unix timestamp (seconds since epoch) associated with this oracle data snapshot.
  /// Can be null if not provided.
  int? timestamp;

  /// Converts this [OracleDataClass] instance into a JSON map.
  ///
  /// Serializes [services] and [timestamp] into their respective JSON representations.
  /// If [services] is null, its field in the JSON map will be null.
  ///
  /// Returns a JSON-compatible map.
  Map<String, dynamic> toJson() => {
    'services': services?.toJson(),
    'timestamp': timestamp,
  };
}

/// Represents the specific services data within an oracle response, particularly focusing on UCO prices.
class OracleServices {
  /// Creates an [OracleServices] instance.
  ///
  /// - [uco]: An optional [Uco] object containing UCO price information (e.g., in EUR, USD).
  OracleServices({this.uco});

  /// Creates an [OracleServices] instance from a JSON map.
  ///
  /// Parses the 'uco' field from the JSON into a [Uco] object.
  ///
  /// - [json]: The JSON map to deserialize.
  /// Returns an [OracleServices] instance. The [uco] field will be null if 'uco' is missing or null in JSON.
  factory OracleServices.fromJson(final Map<String, dynamic> json) =>
      OracleServices(
        uco:
            json['uco'] == null
                ? null
                : Uco.fromJson(json['uco'] as Map<String, dynamic>),
      );

  /// Data object containing UCO prices against other currencies (e.g., EUR, USD).
  /// Can be null if UCO price data is not part of this oracle services update.
  Uco? uco;

  /// Converts this [OracleServices] instance into a JSON map.
  ///
  /// The resulting map will have a single key 'uco', whose value is the JSON representation
  /// of the [uco] field. If [uco] is null, its value in the map will be null.
  ///
  /// Returns a JSON-compatible map.
  Map<String, dynamic> toJson() => {'uco': uco?.toJson()};
}
