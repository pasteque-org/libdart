import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_transfer.freezed.dart';
part 'token_transfer.g.dart';

/// Represents a transfer of a token (fungible or non-fungible) from one party to another.
///
/// This class encapsulates the details of a token transfer, including the [amount] (for fungible tokens),
/// the recipient's address [to], the [tokenAddress] of the token contract, and the [tokenId] (for non-fungible tokens).
@freezed
abstract class TokenTransfer with _$TokenTransfer {
  /// Creates an instance of [TokenTransfer].
  ///
  /// All parameters are optional and can be null, depending on the context and type of token transfer.
  ///
  /// - [amount]: The quantity of the token being transferred. Typically used for fungible tokens.
  ///             Can be null if not applicable (e.g., for certain NFT operations or if amount is implicit).
  /// - [to]: The recipient's address.
  ///         Can be null if the recipient is implicit or defined elsewhere.
  /// - [tokenAddress]: The address of the token contract (e.g., an ERC20 or ERC721 equivalent on Archethic).
  ///                   Can be null if the token is the native currency or if contextually implied.
  /// - [tokenId]: The specific ID of the token being transferred. Typically used for non-fungible tokens (NFTs).
  ///              Can be null for fungible tokens or if not applicable.
  const factory TokenTransfer({
    /// The amount of the token to transfer. Relevant for fungible tokens.
    final int? amount,

    /// The recipient address for the token transfer.
    final String? to,

    /// The address of the smart contract governing the token.
    final String? tokenAddress,

    /// The unique identifier of the token, primarily for non-fungible tokens (NFTs).
    final int? tokenId,
  }) = _TokenTransfer;

  /// Private constructor for `freezed` compatibility.
  const TokenTransfer._();

  /// Creates a [TokenTransfer] instance from a JSON map.
  ///
  /// This factory uses the `freezed` generated `_$TokenTransferFromJson` function
  /// to deserialize the JSON data.
  factory TokenTransfer.fromJson(final Map<String, dynamic> json) =>
      _$TokenTransferFromJson(json);
}
