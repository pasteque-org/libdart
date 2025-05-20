import 'package:archethic_lib_dart/src/model/transaction.dart';
import 'package:archethic_lib_dart/src/utils/confirmations/transaction_event.dart';

/// A callback function that is invoked when a transaction confirmation event is received.
///
/// - [confirmation]: The [TransactionConfirmation] details.
typedef TransactionConfirmationHandler =
    Future<void> Function(TransactionConfirmation confirmation);

/// A callback function that is invoked when an error occurs during transaction processing or confirmation.
///
/// - [error]: The [TransactionError] details.
typedef TransactionErrorHandler = Future<void> Function(TransactionError error);

/// Defines the interface for a remote repository responsible for sending transactions
/// and handling their confirmation lifecycle.
///
/// This abstraction allows for different implementations of how transactions are sent
/// and how their confirmations are monitored (e.g., via WebSockets, polling, etc.).
// ignore: one_member_abstracts
abstract class TransactionRemoteRepositoryInterface {
  /// Default constructor for implementing classes.
  const TransactionRemoteRepositoryInterface();

  /// Sends a transaction to the remote endpoint and monitors its confirmation status.
  ///
  /// - [transaction]: The [Transaction] to be sent.
  /// - [timeout]: The maximum [Duration] to wait for the transaction to be confirmed.
  ///   Defaults to 70 seconds.
  /// - [onConfirmation]: A [TransactionConfirmationHandler] callback that is invoked
  ///   when a confirmation event is received for the transaction.
  /// - [onError]: A [TransactionErrorHandler] callback that is invoked if an error
  ///   occurs during the sending or confirmation process (including timeout).
  Future<void> send({
    required final Transaction transaction,
    required final TransactionConfirmationHandler onConfirmation,
    required final TransactionErrorHandler onError,
    final Duration timeout = const Duration(seconds: 70),
  });
}
