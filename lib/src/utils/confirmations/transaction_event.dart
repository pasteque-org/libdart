import 'package:archethic_lib_dart/src/utils/transaction_error_util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_event.freezed.dart';

/// Represents various errors that can occur during a transaction's lifecycle.
///
/// This class is implemented as a `freezed` union type, allowing for a set of
/// distinct error states, each potentially with its own specific data.
@freezed
class TransactionError with _$TransactionError implements Exception {
  const TransactionError._();

  /// Error indicating that the transaction timed out.
  const factory TransactionError.timeout() = _TransactionTimeout;

  /// Error indicating a connectivity issue prevented the transaction processing.
  const factory TransactionError.connectivity() = _TransactionConnectionError;

  /// Error indicating that consensus was not reached for the transaction.
  const factory TransactionError.consensusNotReached() =
      _TransactionConsensusNotReachedError;

  /// Error indicating that the transaction itself is invalid.
  const factory TransactionError.invalidTransaction() = _TransactionInvalid;

  /// Error indicating that a confirmation received for the transaction was invalid.
  const factory TransactionError.invalidConfirmation() =
      _TransactionInvalidConfirmation;

  /// Error indicating that the sender has insufficient funds for the transaction.
  const factory TransactionError.insufficientFunds() =
      _TransactionInsufficientFunds;

  /// Error indicating that a service required by the transaction was not found.
  const factory TransactionError.serviceNotFound() =
      _TransactionServiceNotFound;

  /// Error indicating that a service (e.g., in a keychain) already exists.
  const factory TransactionError.serviceAlreadyExists() =
      _TransactionServiceAlreadyExists;

  /// Error indicating that the user rejected the transaction.
  const factory TransactionError.userRejected() = _TransactionUserRejected;

  /// Error indicating an unknown account was involved.
  /// [accountName] The name of the unknown account.
  const factory TransactionError.unknownAccount({
    required final String accountName,
  }) = _TransactionUnknownAccount;

  /// Error originating from a JSON RPC call.
  /// [code] The RPC error code.
  /// [message] The RPC error message.
  /// [data] Optional additional data associated with the RPC error.
  const factory TransactionError.rpcError({
    required final int code,
    required final String message,
    final Object? data,
  }) = _TransactionRPCError;

  /// A generic error category for other types of transaction failures.
  /// [code] An optional error code.
  /// [data] Optional additional data, typically a map from which detailed messages can be extracted.
  /// [message] An optional general error message.
  const factory TransactionError.other({
    final int? code,
    final Object? data,
    final String? message,
  }) = _TransactionOtherError;

  /// Gets a human-readable label for the error.
  ///
  /// For `_TransactionOtherError` with map data, it attempts to extract
  /// more detailed messages using [extractTransactionErrorMessages].
  String get messageLabel => switch (this) {
    _TransactionTimeout() => 'connection timeout',
    _TransactionConnectionError() => 'connectivity issue',
    _TransactionConsensusNotReachedError() => 'consensus not reached',
    _TransactionInvalid() => 'invalid transaction',
    _TransactionInvalidConfirmation() => 'invalid confirmation',
    _TransactionInsufficientFunds() => 'insufficient funds',
    _TransactionServiceNotFound() => 'service not found',
    _TransactionServiceAlreadyExists() =>
      'service already exists in the keychain',
    _TransactionUserRejected() => 'user rejected',
    _TransactionUnknownAccount() => 'unknown account',
    _TransactionRPCError(:final message) => 'JSON RPC error: $message',
    _TransactionOtherError(:final message, :final data) => () {
      if (data != null && data is Map<String, dynamic>) {
        final detailedMessage = extractTransactionErrorMessages(data);
        if (detailedMessage.isNotEmpty) {
          return '${message ?? ''}$detailedMessage';
        }
      }
      return message ?? 'other error';
    }(),
    // This case should ideally not be reached if all union types are handled above.
    // However, to satisfy exhaustive switch, it throws UnimplementedError.
    TransactionError() =>
      throw UnimplementedError(
        'Unhandled TransactionError type in messageLabel',
      ),
  };
}

/// Represents the confirmation status of a transaction.
///
/// This class is implemented using `freezed` and provides information about
/// the number of confirmations received, the maximum expected, and utility methods
/// to check confirmation levels.
@freezed
abstract class TransactionConfirmation with _$TransactionConfirmation {
  /// Creates a [TransactionConfirmation] instance.
  ///
  /// - [transactionAddress]: The address of the transaction.
  /// - [nbConfirmations]: The current number of confirmations received. Defaults to 0.
  /// - [maxConfirmations]: The maximum number of confirmations expected for full confirmation. Defaults to 0.
  /// - [ratio]: The ratio used by [isEnoughConfirmed] if not overridden. Defaults to 0.0 (internally this likely means it will use a default like 0.5 from `isEnoughConfirmed` method).
  /// - [ratioEqualIncluded]: Whether the [ratio] for [isEnoughConfirmed] includes equality. Defaults to true.
  const factory TransactionConfirmation({
    required final String transactionAddress,
    @Default(0) final int nbConfirmations,
    @Default(0) final int maxConfirmations,
    @Default(0.0) final double ratio,
    @Default(true) final bool ratioEqualIncluded,
  }) = _TransactionConfirmation;

  /// Private constructor for `freezed`.
  const TransactionConfirmation._();

  /// Returns `true` if the transaction has received all expected confirmations
  /// (i.e., [nbConfirmations] >= [maxConfirmations]).
  bool get isFullyConfirmed => nbConfirmations >= maxConfirmations;

  /// Returns `true` if the transaction has received enough confirmations based on a default ratio (0.5).
  ///
  /// This uses the [isEnoughConfirmations] static method with a hardcoded ratio of 0.5.
  /// The [ratioEqualIncluded] property of the instance is used.
  bool get isEnoughConfirmed => isEnoughConfirmations(
    nbConfirmations,
    maxConfirmations,
    0.5, // Default ratio for this convenience getter
    ratioEqualIncluded: ratioEqualIncluded,
  );

  /// Static utility method to determine if a given number of confirmations is sufficient based on a ratio.
  ///
  /// - [nbConfirmations]: The current number of confirmations.
  /// - [maxConfirmations]: The maximum number of confirmations expected.
  /// - [ratio]: The confirmation ratio to check against (e.g., 0.5 for 50%).
  /// - [ratioEqualIncluded]: Whether the comparison `confirmationRatio >= ratio` (true) or `confirmationRatio > ratio` (false) is used.
  ///   Defaults to `true`.
  /// Returns `true` if the number of confirmations meets the specified ratio, `false` otherwise.
  /// Returns `false` if `maxConfirmations` is 0 to prevent division by zero, effectively meaning not enough confirmations.
  static bool isEnoughConfirmations(
    final int nbConfirmations,
    final int maxConfirmations,
    final double ratio, {
    final bool ratioEqualIncluded = true,
  }) {
    if (maxConfirmations == 0) {
      return false; // Avoid division by zero
    }
    final confirmationRatio = nbConfirmations / maxConfirmations;
    return ratioEqualIncluded
        ? confirmationRatio >= ratio
        : confirmationRatio > ratio;
  }
}
