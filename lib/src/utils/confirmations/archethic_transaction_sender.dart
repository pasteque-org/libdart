import 'dart:async';
import 'dart:developer';

import 'package:archethic_lib_dart/src/model/exception/archethic_exception.dart';
import 'package:archethic_lib_dart/src/model/exception/archethic_json_rpc_exception.dart';
import 'package:archethic_lib_dart/src/model/transaction.dart';
import 'package:archethic_lib_dart/src/services/api_service.dart';
import 'package:archethic_lib_dart/src/utils/confirmations/phoenix_link.dart';
import 'package:archethic_lib_dart/src/utils/confirmations/transaction_event.dart';
import 'package:archethic_lib_dart/src/utils/confirmations/transaction_remote.dart';
import 'package:archethic_lib_dart/src/utils/confirmations/transaction_sender.dart';
import 'package:graphql/client.dart';

/// Default condition to determine if a transaction has received enough confirmations.
///
/// Returns `true` if [TransactionConfirmation.isEnoughConfirmed] is `true`.
bool _defaultIsEnoughConfirmation(final TransactionConfirmation confirmation) =>
    confirmation.isEnoughConfirmed;

/// An implementation of [TransactionSenderInterface] that interacts with the Archethic network
/// via Phoenix channels (WebSockets) for real-time transaction event updates and HTTP for sending transactions.
///
/// It manages the connection, sending of the transaction, listening for confirmation events
/// or errors, and handling timeouts.
class ArchethicTransactionSender
    with ArchethicTransactionParser
    implements TransactionSenderInterface {
  /// Creates an [ArchethicTransactionSender].
  ///
  /// Requires an [apiService] to interact with the Archethic network.
  // ignore: comment_references
  /// It derives Phoenix HTTP and WebSocket endpoints from the [apiService.endpoint].
  ArchethicTransactionSender({required this.apiService}) {
    phoenixHttpEndpoint =
        '${apiService.endpoint}/socket/websocket'; // Note: This might be a typo and should perhaps be just /socket for HTTP polling or use a GraphQL HTTP link.
    websocketEndpoint =
        "${apiService.endpoint.replaceAll('https:', 'wss:').replaceAll('http:', 'ws:')}/socket/websocket";
  }

  /// The HTTP endpoint for Phoenix channel communication (potentially for initial connection or polling).
  late final String phoenixHttpEndpoint;

  /// The WebSocket endpoint for Phoenix channel communication.
  late final String websocketEndpoint;

  /// Service to send transactions and perform other API calls.
  final ApiService apiService;

  PhoenixLink? _phoenixLink;
  HttpLink? _phoenixHttpLink;
  GraphQLClient? _client;

  StreamSubscription? _transactionConfirmedSubscription;
  StreamSubscription? _transactionErrorSubscription;
  Timer? _timer;
  Completer<TransactionConfirmation?>? _completer;

  /// Closes the sender, cancels any pending operations, and cleans up resources.
  ///
  /// If a transaction sending process is active, its completer will be completed with `null`.
  @override
  void close() {
    if (_completer?.isCompleted == false) {
      _completer!.complete(null);
    }
    _reset();
  }

  /// Sends a transaction and waits for its confirmation.
  ///
  /// - [transaction]: The transaction to send.
  /// - [isEnoughConfirmations]: A callback to determine if the received number of confirmations is sufficient.
  ///   Defaults to checking [TransactionConfirmation.isEnoughConfirmed].
  /// - [timeout]: The maximum duration to wait for enough confirmations. Defaults to 70 minutes.
  /// - [onConfirmation]: An optional callback invoked for each confirmation event received.
  ///
  /// Returns a [Future] that completes with a [TransactionConfirmation] if successful and enough
  /// confirmations are received, `null` if closed before completion, or an error
  /// (typically a [TransactionError]) if the transaction fails or times out.
  /// Throws an [AssertionError] if called while a previous send operation is still active.
  @override
  Future<TransactionConfirmation?> send({
    required final Transaction transaction,
    final bool Function(TransactionConfirmation) isEnoughConfirmations =
        _defaultIsEnoughConfirmation,
    final Duration timeout = const Duration(minutes: 70),
    final TransactionConfirmationHandler? onConfirmation,
  }) {
    assert(
      _completer == null,
      'ArchethicTransactionSender already in use. Call [close()] or create a new one.',
    );
    _completer = Completer<TransactionConfirmation?>();

    _timer = Timer(timeout, () {
      _onError(const TransactionError.timeout());
    });

    unawaited(
      _send(
        transaction: transaction,
        isEnoughConfirmations: isEnoughConfirmations,
        onConfirmation: onConfirmation,
      ),
    );
    return _completer!.future;
  }

  Future<void> _send({
    required final Transaction transaction,
    final bool Function(TransactionConfirmation) isEnoughConfirmations =
        _defaultIsEnoughConfirmation,
    final TransactionConfirmationHandler? onConfirmation,
  }) async {
    try {
      await _connect(phoenixHttpEndpoint, websocketEndpoint);

      _listenTransactionConfirmed(transaction.address!.address!, (
        final confirmation,
      ) async {
        if (onConfirmation != null) {
          unawaited(onConfirmation(confirmation));
        }
        if (isEnoughConfirmations(confirmation)) {
          _onComplete(confirmation);
        }
      }, _onError);
      _listenTransactionError(transaction.address!.address!, _onError);

      await _sendTransaction(transaction: transaction, onError: _onError);
    } on ArchethicConnectionException {
      await _onError(const TransactionError.connectivity());
    } on ArchethicJsonRPCException catch (e) {
      await _onError(
        TransactionError.rpcError(
          code: e.code,
          message: e.message,
          data: e.data,
        ),
      );
    } on Exception catch (e) {
      await _onError(TransactionError.other(message: e.toString()));
    }
  }

  void _onComplete(final TransactionConfirmation confirmation) {
    _completer?.complete(confirmation);
    _reset();
  }

  Future<void> _onError(final TransactionError error) async {
    _completer?.completeError(error);
    _reset();
  }

  void _reset() {
    _timer?.cancel();
    _timer = null;
    _phoenixLink?.dispose();
    _phoenixLink = null;
    _phoenixHttpLink?.dispose();
    _phoenixHttpLink = null;
    _transactionConfirmedSubscription?.cancel();
    _transactionConfirmedSubscription = null;
    _transactionErrorSubscription?.cancel();
    _transactionErrorSubscription = null;
    _client = null;

    _completer = null;
  }

  Future<void> _connect(
    final String phoenixHttpEndpoint,
    final String websocketEndpoint,
  ) async {
    assert(
      _client == null,
      'Connection already established. That instance of [SubscriptionChannel] must not be reused.',
    );

    _phoenixHttpLink = HttpLink(phoenixHttpEndpoint);

    _phoenixLink = await PhoenixLink.fromWebsocketUri(uri: websocketEndpoint);

    final link = Link.split(
      (final request) => request.isSubscription,
      _phoenixLink!,
      _phoenixHttpLink!,
    );
    _client = GraphQLClient(link: link, cache: GraphQLCache());
  }

  Stream<QueryResult<T>> _subscribe<T>(final String operation) async* {
    assert(_client != null, 'You must call [connect] before [subscribing].');
    final subscriptionDocument = gql(operation);
    yield* _client!.subscribe(
      SubscriptionOptions(document: subscriptionDocument),
    );
  }

  Future<void> _sendTransaction({
    required final Transaction transaction,
    required final TransactionErrorHandler onError,
  }) async {
    final transactionStatus = await apiService.sendTx(transaction);

    if (transactionStatus.status == 'invalid') {
      await onError(const TransactionError.invalidTransaction());
    }
  }

  void _listenTransactionError(
    final String address,
    final TransactionErrorHandler onError,
  ) {
    assert(
      _transactionErrorSubscription == null,
      'Already listening to transaction errors.',
    );

    _transactionErrorSubscription = _subscribe<TransactionError>(
      'subscription { transactionError(address: "$address") { context, error { code, data, message } } }',
    ).listen((final result) {
      final transactionError = _errorDtoToModel(result.data);
      log('>>> Transaction KO $address <<< (${transactionError.messageLabel})');
      onError(transactionError);
    });
  }

  void _listenTransactionConfirmed(
    final String address,
    final TransactionConfirmationHandler onConfirmation,
    final TransactionErrorHandler onError,
  ) {
    assert(
      _transactionConfirmedSubscription == null,
      'Already listening to transaction confirmations.',
    );

    _transactionConfirmedSubscription = _subscribe(
      'subscription { transactionConfirmed(address: "$address") { nbConfirmations, maxConfirmations } }',
    ).listen((final result) async {
      final transactionEvent = _confirmationDtoToModel(
        transactionAddress: address,
        data: result.data,
      );
      if (transactionEvent == null) {
        await onError(const TransactionError.invalidConfirmation());
        return;
      }

      log(
        '>>> Transaction confirmed $address <<< ${transactionEvent.nbConfirmations} / ${transactionEvent.maxConfirmations}',
      );
      await onConfirmation(transactionEvent);
    });
  }
}

/// Handles conversion from Archethic DTOs to Models
mixin ArchethicTransactionParser {
  /// Parses a GraphQL subscription data map for a transaction error into a [TransactionError] model.
  ///
  /// Returns `null` if the data is invalid or cannot be parsed.
  TransactionError _errorDtoToModel(final Map<String, dynamic>? data) {
    try {
      final transactionError = data?['transactionError'];
      if (transactionError['error'] != null) {
        final error = transactionError?['error'];
        final code = error['code'] as int;
        switch (code) {
          case -31000:
            return const TransactionError.insufficientFunds();
          case -31501:
            return const TransactionError.consensusNotReached();
          case -31502:
            return const TransactionError.timeout();
          default:
        }

        return TransactionError.other(
          code: error['code'] as int,
          data: error['data'],
          message: error['message'],
        );
      }
      return const TransactionError.other();
    } catch (e) {
      return const TransactionError.other();
    }
  }

  /// Parses a GraphQL subscription data map for a transaction confirmation into a [TransactionConfirmation] model.
  ///
  /// Returns `null` if the data is invalid or cannot be parsed.
  TransactionConfirmation? _confirmationDtoToModel({
    required final String transactionAddress,
    final Map<String, dynamic>? data,
  }) {
    final transactionConfirmation = data?['transactionConfirmed'];
    if (transactionConfirmation == null) {
      return null;
    }

    final nbConfirmations = transactionConfirmation?['nbConfirmations'] ?? 0;
    final maxConfirmations = transactionConfirmation?['maxConfirmations'] ?? 0;
    return TransactionConfirmation(
      transactionAddress: transactionAddress,
      nbConfirmations: nbConfirmations,
      maxConfirmations: maxConfirmations,
    );
  }
}
