import 'package:archethic_lib_dart/src/model/node.dart';

/// Represents the data structure for a response containing a list of network nodes.
///
/// This class is typically used to parse JSON responses from API endpoints that return
/// information about nodes on the Archethic network.
class NodesResponseData {
  /// Creates an instance of [NodesResponseData].
  ///
  /// - [nodes]: An optional list of [Node] objects.
  ///   Can be null if the response does not contain any node information or if the field is absent.
  NodesResponseData({this.nodes});

  /// Creates a [NodesResponseData] instance from a JSON map.
  ///
  /// Parses the 'nodes' field from the JSON, which is expected to be a list
  /// of node objects, and converts each into a [Node] instance.
  /// If 'nodes' is null or not present in the JSON, the [nodes] field will be null.
  ///
  /// - [json]: The JSON map to deserialize.
  factory NodesResponseData.fromJson(final Map<String, dynamic> json) =>
      NodesResponseData(
        nodes:
            json['nodes'] == null
                ? null
                : List<Node>.from(
                  json['nodes'].map((final x) => Node.fromJson(x)),
                ),
      );

  /// A list of nodes retrieved from the network. Can be null.
  List<Node>? nodes;

  /// Converts this [NodesResponseData] instance into a JSON map.
  ///
  /// Serializes the [nodes] list back into a JSON-compatible format.
  /// If [nodes] is null, the corresponding JSON field will be null.
  Map<String, dynamic> toJson() => <String, dynamic>{
    'nodes': List<dynamic>.from(nodes!.map((final x) => x.toJson())),
  };
}
