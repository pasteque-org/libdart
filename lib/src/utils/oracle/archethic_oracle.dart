import 'dart:async';
import 'dart:io';

import 'package:archethic_lib_dart/src/model/oracle_chain/oracle_uco_price.dart';
import 'package:archethic_lib_dart/src/model/response/oracle_data_response.dart';
import 'package:archethic_lib_dart/src/model/uco.dart';
import 'package:archethic_lib_dart/src/utils/confirmations/phoenix_link.dart';
import 'package:graphql/client.dart';
import 'package:http/http.dart' as http show post;

/// A client for interacting with the Archethic Oracle.
///
/// This class provides methods to fetch current or historical UCO price data
/// and to subscribe to real-time updates of UCO prices from the oracle.
class ArchethicOracle {
  /// Creates an instance of [ArchethicOracle].
  ///
  /// Requires an [endpoint] URL for the Archethic node.
  /// The websocket and HTTP endpoints for Phoenix channels are derived from this base endpoint.
  ArchethicOracle({required this.endpoint}) {
    websocketEndpoint =
        "${endpoint.replaceAll('https:', 'wss:').replaceAll('http:', 'wss:')}/socket/websocket";

    phoenixHttpEndpoint = '$endpoint/socket/websocket';
  }

  /// The base endpoint URL of the Archethic node.
  final String endpoint;

  /// The HTTP endpoint used for Phoenix channel communication (fallback).
  late final String phoenixHttpEndpoint;

  /// The WebSocket endpoint used for Phoenix channel subscriptions.
  late final String websocketEndpoint;

  /// Subscribes to real-time updates of UCO prices from the Archethic Oracle.
  ///
  /// Establishes a WebSocket connection using PhoenixLink and GraphQL to receive
  /// [OracleUcoPrice] updates whenever the oracle data changes.
  ///
  /// The subscription query requests `timestamp` and `services.uco.{eur, usd}`.
  ///
  /// Returns a [Stream] of [OracleUcoPrice] objects.
  /// Each object in the stream represents an update from the oracle.
  /// Throws exceptions if the connection or subscription fails.
  Future<Stream<OracleUcoPrice>> subscribe() async {
    final phoenixHttpLink = HttpLink(phoenixHttpEndpoint);

    final phoenixLink = await PhoenixLink.fromWebsocketUri(
      uri: websocketEndpoint,
    );

    final link = Link.split(
      (final request) => request.isSubscription,
      phoenixLink,
      phoenixHttpLink,
    );
    final client = GraphQLClient(link: link, cache: GraphQLCache());

    final subscriptionDocument = gql(
      'subscription { oracleUpdate { timestamp, services { uco { eur, usd } } } }',
    );
    return client
        .subscribe(SubscriptionOptions(document: subscriptionDocument))
        .map((final result) => _oracleUcoPriceDtoToModel(data: result.data))
        .where((final valueOrNull) => valueOrNull != null)
        .cast();
  }

  /// Fetches UCO price data from the Archethic Oracle.
  ///
  /// Sends a GraphQL query to the `/api` endpoint of the Archethic node.
  /// If [timestamp] is provided and not 0, it fetches historical oracle data for that specific timestamp.
  /// Otherwise, it fetches the latest available oracle data.
  ///
  /// The query requests `oracleData.timestamp` and `oracleData.services.uco.{eur, usd}`.
  ///
  /// - [timestamp]: An optional Unix timestamp (seconds since epoch) to fetch historical data.
  ///                Defaults to 0, which means fetch the latest data.
  /// Returns a [Future] that completes with an [OracleUcoPrice] object.
  /// Throws an [HttpException] if the HTTP request fails or returns a non-200 status code.
  Future<OracleUcoPrice> getOracleData({final int timestamp = 0}) async {
    final requestHeaders = <String, String>{
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };

    final body =
        timestamp == 0
            ? '{"query": "query { oracleData { timestamp services { uco { eur, usd } } } }"}'
            : '{"query": "query { oracleData(timestamp: $timestamp) { timestamp services { uco { eur, usd } } } }"}';

    final responseHttp = await http.post(
      Uri.parse('$endpoint/api'),
      body: body,
      headers: requestHeaders,
    );

    if (responseHttp.statusCode != 200) {
      throw HttpException(responseHttp.toString());
    }

    final oracleDataResponse = oracleDataResponseFromJson(responseHttp.body);
    final uco = oracleDataResponse.data?.oracleData?.services?.uco;

    return OracleUcoPrice(
      timestamp: oracleDataResponse.data?.oracleData?.timestamp,
      uco: Uco(eur: uco!.eur, usd: uco.usd),
    );
  }

  /// Converts a raw GraphQL subscription data map into an [OracleUcoPrice] object.
  ///
  /// This is a helper method used by the [subscribe] method to process incoming data.
  /// It expects the [data] map to contain an 'oracleUpdate' key with the price information.
  ///
  /// - [data]: The map containing the GraphQL subscription result data.
  /// Returns an [OracleUcoPrice] object if the data is valid, otherwise `null`.
  OracleUcoPrice? _oracleUcoPriceDtoToModel({
    final Map<String, dynamic>? data,
  }) {
    final oracleUpdate = data?['oracleUpdate'];
    if (oracleUpdate == null) {
      return null;
    }

    return OracleUcoPrice(
      timestamp: oracleUpdate?['timestamp'],
      uco: Uco(
        eur: oracleUpdate?['services']['uco']['eur'],
        usd: oracleUpdate?['services']['uco']['usd'],
      ),
    );
  }
}
