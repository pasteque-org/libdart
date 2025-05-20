import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_movement.freezed.dart';
part 'transaction_movement.g.dart';

/// Represents a movement of assets within a transaction, such as a transfer of UCO or tokens.
///
/// This class details the amount, recipient, and type of asset being moved.
@freezed
abstract class TransactionMovement with _$TransactionMovement {
  /// Creates a [TransactionMovement] instance.
  ///
  /// All parameters are optional and describe the specifics of the asset movement.
  const factory TransactionMovement({
    /// The amount of the asset being moved.
    final int? amount,

    /// The address of the token, if the movement involves a token.
    final String? tokenAddress,

    /// The recipient's address for this asset movement.
    final String? to,

    /// The type of asset being moved, e.g., 'UCO' or 'Token'.
    final String? type,

    /// The unique identifier for a token, relevant if a specific token instance (like an NFT) is being moved.
    /// This ID is allocated when the token is minted.
    final int? tokenId,
  }) = _TransactionMovement;

  /// Private constructor for [TransactionMovement].
  const TransactionMovement._();

  /// Creates a [TransactionMovement] instance from a JSON map.
  factory TransactionMovement.fromJson(final Map<String, dynamic> json) =>
      _$TransactionMovementFromJson(json);
}
