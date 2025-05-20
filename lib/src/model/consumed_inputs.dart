import 'package:freezed_annotation/freezed_annotation.dart';

part 'consumed_inputs.freezed.dart';
part 'consumed_inputs.g.dart';

/// Represents the inputs consumed by a transaction.
///
/// This class details the source and nature of the assets or data being used in a transaction.
@freezed
abstract class ConsumedInputs with _$ConsumedInputs {
  /// Creates a [ConsumedInputs] instance.
  ///
  /// All parameters are optional and represent different aspects of a consumed input.
  const factory ConsumedInputs({
    /// The amount of the asset being consumed. Applicable for UCO or token inputs.
    final int? amount,

    /// The transaction hash from which this input originates.
    final String? from,

    /// The address of the token, if the input is a token.
    final String? tokenAddress,

    /// The timestamp indicating when the Unspent Transaction Output (UTXO) was created or last manipulated.
    final int? timestamp,

    /// The type of the input. Common types include 'UCO', 'token', 'state', or 'call'.
    final String? type,

    /// The unique identifier for a token, allocated when the token is minted. Applicable for token inputs.
    final int? tokenId,

    /// The version of the UTXO data structure.
    final int? protocolVersion,

    /// The state of a smart contract, if the input involves a smart contract state.
    final String? state,
  }) = _ConsumedInputs;

  /// Private constructor for [ConsumedInputs].
  const ConsumedInputs._();

  /// Creates a [ConsumedInputs] instance from a JSON map.
  factory ConsumedInputs.fromJson(final Map<String, dynamic> json) =>
      _$ConsumedInputsFromJson(json);
}
