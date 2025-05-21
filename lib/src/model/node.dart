import 'package:freezed_annotation/freezed_annotation.dart';

part 'node.freezed.dart';
part 'node.g.dart';

/// Represents a node in the Archethic network.
///
/// This class holds various properties of a network node, such as its authorization status,
/// availability, IP address, port, public keys, and other metadata.
@freezed
abstract class Node with _$Node {
  /// Creates an instance of a [Node].
  ///
  /// All parameters are optional and can be null if the information is not available or not applicable.
  ///
  /// - [authorized]: Indicates if the node is currently authorized on the network.
  /// - [available]: Indicates if the node is currently available (reachable).
  /// - [averageAvailability]: The node's average availability score or percentage.
  /// - [firstPublicKey]: The initial public key of the node.
  /// - [geoPatch]: Geographical information or patch for the node.
  /// - [ip]: The IP address of the node.
  /// - [lastPublicKey]: The most recent or current public key of the node.
  /// - [networkPatch]: Network-related patch information for the node.
  /// - [port]: The port number the node is listening on.
  /// - [rewardAddress]: The address where the node receives its rewards.
  /// - [enrollmentDate]: The timestamp (e.g., Unix epoch) when the node was enrolled.
  /// - [authorizationDate]: The timestamp (e.g., Unix epoch) when the node was last authorized.
  const factory Node({
    /// Indicates if the node is currently authorized to participate in the network.
    final bool? authorized,

    /// Indicates if the node is currently available and reachable.
    final bool? available,

    /// The historical average availability of the node, often represented as a score or percentage.
    final double? averageAvailability,

    /// The first or initial public key associated with this node.
    final String? firstPublicKey,

    /// Geographical patch information, possibly indicating its physical or logical region.
    final String? geoPatch,

    /// The IP address of the node.
    final String? ip,

    /// The last known or current public key for this node.
    final String? lastPublicKey,

    /// Network patch information, which might relate to its subnet or specific network segment.
    final String? networkPatch,

    /// The network port on which the node provides its services.
    final int? port,

    /// The Archethic address designated to receive rewards for this node's participation.
    final String? rewardAddress,

    /// The date (timestamp) when the node was initially enrolled in the network.
    final int? enrollmentDate,

    /// The date (timestamp) when the node was last authorized or its authorization status was confirmed.
    final int? authorizationDate,
  }) = _Node;

  /// Private constructor for `freezed` compatibility.
  const Node._();

  /// Creates a [Node] instance from a JSON map.
  factory Node.fromJson(final Map<String, dynamic> json) =>
      _$NodeFromJson(json);
}
