import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_balance.freezed.dart';
part 'token_balance.g.dart';

/// [TokenBalance] represents a token ledger balance.
@freezed
abstract class TokenBalance with _$TokenBalance {
  /// Creates an instance of [TokenBalance].
  ///
  /// All parameters are optional and nullable.
  const factory TokenBalance({
    /// Address of the token
    final String? address,

    /// Amount of token
    final int? amount,

    /// ID of the token
    final int? tokenId,
  }) = _TokenBalance;
  const TokenBalance._();

  /// Creates a [TokenBalance] instance from a JSON map.
  factory TokenBalance.fromJson(final Map<String, dynamic> json) =>
      _$TokenBalanceFromJson(json);
}
