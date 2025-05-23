import 'package:archethic_lib_dart/src/model/consumed_inputs.dart';
import 'package:archethic_lib_dart/src/model/transaction_movement.dart';
import 'package:archethic_lib_dart/src/model/unspent_outputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ledger_operations.freezed.dart';
part 'ledger_operations.g.dart';

/// Represents the ledger operations performed by a transaction.
///
/// This class encapsulates the details of how a transaction affects the ledger,
/// including fees, asset transfers (movements), unspent outputs, and consumed inputs.
@freezed
abstract class LedgerOperations with _$LedgerOperations {
  /// Creates an instance of [LedgerOperations].
  ///
  /// - [fee]: The transaction fee, which is distributed as node rewards. Can be null if not applicable.
  /// - [transactionMovements]: A list of [TransactionMovement] objects detailing the asset transfers.
  ///   Defaults to an empty list.
  /// - [unspentOutputs]: A list of [UnspentOutputs] created by this transaction.
  ///   Defaults to an empty list.
  /// - [consumedInputs]: A list of [ConsumedInputs] that were spent by this transaction.
  ///   Defaults to an empty list.
  const factory LedgerOperations({
    /// The transaction fee, distributed as node rewards. This can be null if not applicable for the transaction type.
    final int? fee,

    /// A list detailing the transfers of assets (e.g., UCO or tokens) within the transaction.
    @Default([]) final List<TransactionMovement> transactionMovements,

    /// A list of outputs created by this transaction that remain unspent.
    @Default([]) final List<UnspentOutputs> unspentOutputs,

    /// A list of inputs that were consumed (spent) by this transaction.
    @Default([]) final List<ConsumedInputs> consumedInputs,
  }) = _LedgerOperations;

  /// Private constructor for `freezed` compatibility.
  const LedgerOperations._();

  /// Creates a [LedgerOperations] instance from a JSON map.
  factory LedgerOperations.fromJson(final Map<String, dynamic> json) =>
      _$LedgerOperationsFromJson(json);
}
