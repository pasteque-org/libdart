import 'package:freezed_annotation/freezed_annotation.dart';

part 'endpoint.freezed.dart';
part 'endpoint.g.dart';

/// Represents a network endpoint, typically for a node in the Archethic network.
///
/// It consists of an IP address and a port number.
@freezed
abstract class Endpoint with _$Endpoint {
  /// Creates an [Endpoint] instance.
  ///
  /// The [ip] parameter is the IP address, defaulting to an empty string.
  /// The [port] parameter is the port number, defaulting to 0.
  const factory Endpoint({
    /// The IP address of the endpoint.
    @Default('') final String ip,

    /// The port number of the endpoint.
    @Default(0) final int port,
  }) = _Endpoint;

  /// Private constructor for [Endpoint].
  const Endpoint._();

  /// Creates an [Endpoint] instance from a JSON map.
  factory Endpoint.fromJson(final Map<String, dynamic> json) =>
      _$EndpointFromJson(json);
}
