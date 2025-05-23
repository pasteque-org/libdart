import 'dart:async';

import 'package:archethic_lib_dart/src/model/transaction.dart';
import 'package:archethic_lib_dart/src/utils/confirmations/transaction_event.dart';
import 'package:archethic_lib_dart/src/utils/confirmations/transaction_remote.dart';

/// Defines the interface for sending transactions and handling their confirmations.
///
/// Implementations of this class are responsible for the actual communication
/// with the Archethic network to send a transaction and to receive updates
/// about its confirmation status.
abstract class TransactionSenderInterface {
  /// Creates a const instance of [TransactionSenderInterface].
  const TransactionSenderInterface();

  /// Sends a [transaction] to the Archethic network and listens for its confirmations.
  ///
  /// The method will automatically stop listening (and release resources associated with this specific send operation)
  /// under the following conditions:
  /// - The transaction gathers enough confirmations as determined by the [isEnoughConfirmations] callback.
  /// - A [timeout] is reached before enough confirmations are received.
  /// - The transaction definitively fails (e.g., rejected by the network).
  ///
  /// Callers can be notified of each incoming confirmation event through the optional [onConfirmation] handler.
  ///
  /// - [transaction]: The [Transaction] object to be sent.
  /// - [isEnoughConfirmations]: A callback function that takes a [TransactionConfirmation]
  ///   and returns `true` if the number or type of confirmations is sufficient, `false` otherwise.
  /// - [timeout]: The maximum duration to wait for enough confirmations. Defaults to 70 seconds.
  /// - [onConfirmation]: An optional [TransactionConfirmationHandler] callback that is invoked
  ///   for each confirmation event received for the transaction.
  ///
  /// Returns a [Future] that completes with a [TransactionConfirmation] object representing
  /// the final state of the transaction (e.g., successfully confirmed, timed out, or failed).
  /// Returns `null` if the operation is prematurely closed or an unexpected error occurs during the send process itself
  /// before any confirmation state can be determined.
  Future<TransactionConfirmation?> send({
    required final Transaction transaction,
    final bool Function(TransactionConfirmation) isEnoughConfirmations,
    final Duration timeout = const Duration(seconds: 70),
    final TransactionConfirmationHandler? onConfirmation,
  });

  /// Releases any resources held by the transaction sender implementation.
  ///
  /// This method should be called when the sender is no longer needed to ensure
  /// that any open connections or listeners are properly closed.
  void close();
}
