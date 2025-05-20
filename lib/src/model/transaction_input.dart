import 'package:archethic_lib_dart/src/model/consumed_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_input.freezed.dart';
part 'transaction_input.g.dart';

/// Represents an input for a transaction, detailing the source of funds or data.
///
/// This class is similar to [ConsumedInputs] but might be used in different contexts,
/// for example, when querying available inputs before they are consumed.
@freezed
abstract class TransactionInput with _$TransactionInput {
  /// Creates a [TransactionInput] instance.
  ///
  /// All parameters are optional and describe various attributes of a transaction input.
  const factory TransactionInput({
    /// The amount of the asset associated with this input (e.g., UCO or token amount).
    final int? amount,

    /// The transaction hash from which this input originates.
    final String? from,

    /// The address of the token, if this input pertains to a token.
    final String? tokenAddress,

    /// A boolean indicating whether this input has already been spent.
    final bool? spent,

    /// The timestamp indicating when this input was generated or became available.
    final int? timestamp,

    /// The type of the input, such as 'UCO', 'Token', or 'Call'.
    final String? type,

    /// The unique identifier for a token, relevant if the input is a specific token instance (e.g., an NFT).
    /// This ID is typically allocated when the token is minted.
    final int? tokenId,
  }) = _TransactionInput;

  /// Private constructor for [TransactionInput].
  const TransactionInput._();

  /// Creates a [TransactionInput] instance from a JSON map.
  factory TransactionInput.fromJson(final Map<String, dynamic> json) =>
      _$TransactionInputFromJson(json);
}
