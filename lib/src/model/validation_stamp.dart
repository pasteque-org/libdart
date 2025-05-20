import 'package:archethic_lib_dart/src/model/ledger_operations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_stamp.freezed.dart';
part 'validation_stamp.g.dart';

/// Represents a validation stamp issued by a coordinator for a transaction.
///
/// This stamp provides proof that a transaction has been validated and includes details
/// such as ledger operations, proof of integrity, proof of work, coordinator's signature,
/// timestamp, and the protocol version used for validation.
@freezed
abstract class ValidationStamp with _$ValidationStamp {
  /// Creates a [ValidationStamp] instance.
  ///
  /// All parameters are optional and describe the components of the validation stamp.
  const factory ValidationStamp({
    /// Details of the ledger operations (e.g., UCO transfers, token transfers) validated in the transaction.
    final LedgerOperations? ledgerOperations,

    /// A hash representing the proof of integrity. This typically includes a hash of the transaction
    /// itself and a link to the previous proof of integrity, forming a chain.
    final String? proofOfIntegrity,

    /// Proof of work associated with the transaction or its validation.
    /// Note: The comment "Public key matching the origin signature" might be misleading or specific to a certain context.
    /// Generally, this field holds a proof of computational work.
    final String? proofOfWork,

    /// The digital signature of the coordinator that validated the transaction and issued this stamp.
    final String? signature,

    /// The Unix timestamp indicating when the validation occurred.
    final int? timestamp,

    /// The version of the transaction validation protocol used by the coordinator.
    final int? protocolVersion,
  }) = _ValidationStamp;

  /// Private constructor for [ValidationStamp].
  const ValidationStamp._();

  /// Creates a [ValidationStamp] instance from a JSON map.
  factory ValidationStamp.fromJson(final Map<String, dynamic> json) =>
      _$ValidationStampFromJson(json);
}
