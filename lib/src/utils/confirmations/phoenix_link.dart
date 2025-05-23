import 'dart:async';
import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:phoenix_socket/phoenix_socket.dart';

/// A GraphQL [Link] for executing requests (queries, mutations, and subscriptions)
/// over Phoenix channels.
///
/// This link handles the specifics of communicating with a GraphQL backend
/// that uses Phoenix channels, particularly for managing subscriptions via Absinthe.
class PhoenixLink extends Link {
  /// Creates a new [PhoenixLink] using an established [PhoenixSocket] and [PhoenixChannel].
  ///
  /// This constructor is typically used if you have an existing Phoenix socket and channel setup.
  /// For a more convenient way to create a [PhoenixLink] from a URI, see [PhoenixLink.fromWebsocketUri].
  ///
  /// - [socket]: The active [PhoenixSocket] instance.
  /// - [channel]: The joined [PhoenixChannel] instance, typically connected to an Absinthe control topic (e.g., "__absinthe__:control").
  /// - [parser]: The [ResponseParser] to use for parsing GraphQL responses. Defaults to [ResponseParser()].
  /// - [serializer]: The [RequestSerializer] to use for serializing GraphQL requests. Defaults to [RequestSerializer()].
  PhoenixLink({
    required this.socket,
    required this.channel,
    final ResponseParser parser = const ResponseParser(),
    final RequestSerializer serializer = const RequestSerializer(),
  }) : _serializer = serializer,
       _parser = parser;

  /// The underlying [PhoenixSocket] used for the connection.
  final PhoenixSocket socket;

  /// The underlying [PhoenixChannel] used for communication.
  /// This channel is typically joined to a topic like "__absinthe__:control".
  final PhoenixChannel channel;

  /// The serializer used for GraphQL requests.
  final RequestSerializer _serializer;

  /// The parser used for GraphQL responses.
  final ResponseParser _parser;

  /// Creates a new [PhoenixLink] by establishing a new [PhoenixSocket] connection
  /// and joining a [PhoenixChannel].
  ///
  /// This is a convenience method for quickly setting up a [PhoenixLink].
  /// It connects to the specified [uri], creates a channel for the Absinthe control topic
  /// ("__absinthe__:control"), and joins it.
  ///
  /// - [uri]: The WebSocket URI for the Phoenix socket (e.g., "ws://localhost:4000/socket/websocket").
  /// - [params]: Optional parameters to pass during socket connection, often used for authentication.
  ///
  /// Returns a [Future] that completes with a new [PhoenixLink] instance once the
  /// socket is connected and the channel is joined.
  static Future<PhoenixLink> fromWebsocketUri({
    required final String uri,
    final Map<String, String>? params,
  }) async {
    final socket = PhoenixSocket(
      uri,
      socketOptions: PhoenixSocketOptions(params: params),
    );
    await socket.connect();

    final channel = socket.addChannel(topic: '__absinthe__:control');
    final push = channel.join();
    await push.future;

    return PhoenixLink(socket: socket, channel: channel);
  }

  /// Disposes of the resources used by this link.
  ///
  /// This method closes the [PhoenixChannel] and the [PhoenixSocket].
  /// It should be called when the link is no longer needed to prevent resource leaks.
  @override
  Future<void> dispose() {
    channel.close();
    socket.close();
    return super.dispose();
  }

  /// Executes a GraphQL [Request] over the Phoenix channel.
  ///
  /// This method handles both single responses (for queries/mutations) and
  /// streams of responses (for subscriptions).
  ///
  /// For subscriptions, it sends a "doc" event with the request payload and listens
  /// for messages on a topic identified by the `subscriptionId` returned by the server.
  /// It handles unsubscription by sending an "unsubscribe" event when the stream listener is cancelled.
  ///
  /// For queries/mutations, it expects a single response to the "doc" event.
  ///
  /// - [request]: The GraphQL [Request] to execute.
  /// - [forward]: An optional [NextLink] in a link chain (not typically used with terminal links like this).
  ///
  /// Returns a [Stream<Response>] which will emit one or more [Response] objects.
  /// For queries and mutations, it typically emits a single response.
  /// For subscriptions, it emits a response for each event from the server.
  /// Errors during the process, such as push errors or parsing errors, are thrown as exceptions.
  @override
  Stream<Response> request(
    final Request request, [
    final NextLink? forward,
  ]) async* {
    final payload = _serializer.serializeRequest(request);
    String? phoenixSubscriptionId;
    StreamSubscription<Response>? websocketSubscription;

    StreamController<Response>? streamController;
    final push = channel.push('doc', payload);
    try {
      final pushResponse = await push.future;
      //set the subscription id in order to cancel the subscription later
      phoenixSubscriptionId =
          pushResponse.response['subscriptionId'] as String?;

      if (phoenixSubscriptionId != null) {
        //yield all messages for this subscription
        streamController = StreamController();

        websocketSubscription = channel.socket
            .streamForTopic(phoenixSubscriptionId)
            .map(
              (final event) => _parser.parseResponse(
                event.payload!['result'] as Map<String, dynamic>,
              ),
            )
            .listen(streamController.add, onError: streamController.addError);
        yield* streamController.stream;
      } else if (pushResponse.isOk) {
        yield _parser.parseResponse(
          pushResponse.response as Map<String, dynamic>,
        );
      } else if (pushResponse.isError) {
        // ignore: only_throw_errors
        throw _parser.parseError(pushResponse.response as Map<String, dynamic>);
      }
    } on Exception catch (e, stackTrace) {
      log(e.toString(), error: e, stackTrace: stackTrace);
    } finally {
      await websocketSubscription?.cancel();
      await streamController?.close();
      //this will be called once the caller stops listening to the stream
      // (yield* stops if there is no one listening)
      if (channel.state == PhoenixChannelState.joined &&
          phoenixSubscriptionId != null) {
        channel.push('unsubscribe', {'subscriptionId': phoenixSubscriptionId});
      }
    }
  }
}
