import 'package:freezed_annotation/freezed_annotation.dart';

part 'unspent_outputs.freezed.dart';
part 'unspent_outputs.g.dart';

/// Represents an Unspent Transaction Output (UTXO).
///
/// UTXOs are the fundamental building blocks of transactions in UTXO-based blockchains like Archethic.
/// They represent assets (UCO or tokens) or contract states that have not yet been spent and can be used as inputs in new transactions.
@freezed
abstract class UnspentOutputs with _$UnspentOutputs {
  /// Creates an [UnspentOutputs] instance.
  ///
  /// All parameters are optional and describe the characteristics of the UTXO.
  const factory UnspentOutputs({
    /// The amount of the asset (UCO or token) in this UTXO.
    final int? amount,

    /// The address of the token, if this UTXO represents a token.
    final String? tokenAddress,

    /// The type of asset this UTXO represents, e.g., 'UCO' or 'Token'.
    final String? type,

    /// The transaction hash that created this UTXO.
    final String? from,

    /// The unique identifier for a token, relevant if this UTXO is a specific token instance (e.g., an NFT).
    final int? tokenId,

    /// The timestamp indicating when this UTXO was created or last modified.
    final int? timestamp,

    /// The state of a smart contract, if this UTXO represents a contract state.
    /// The structure of the state is a dynamic map.
    final Map<String, dynamic>? state,
  }) = _UnspentOutputs;

  /// Private constructor for [UnspentOutputs].
  const UnspentOutputs._();

  /// Creates an [UnspentOutputs] instance from a JSON map.
  factory UnspentOutputs.fromJson(final Map<String, dynamic> json) =>
      _$UnspentOutputsFromJson(json);
}
