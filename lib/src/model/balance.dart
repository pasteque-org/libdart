import 'package:archethic_lib_dart/src/model/token_balance.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'balance.freezed.dart';
part 'balance.g.dart';

/// Represents a ledger balance, including UCO and other token balances.
@freezed
abstract class Balance with _$Balance {
  /// Creates a [Balance] instance.
  ///
  /// The [token] parameter is a list of [TokenBalance] objects, representing the balances of various tokens.
  /// It defaults to an empty list.
  /// The [uco] parameter is an integer representing the UCO balance, defaulting to 0.
  const factory Balance({
    /// Token balances for various tokens.
    @Default([]) final List<TokenBalance> token,

    /// UCO (Universal Coin) balance.
    @Default(0) final int uco,
  }) = _Balance;

  /// Private constructor for [Balance].
  const Balance._();

  /// Creates a [Balance] instance from a JSON map.
  factory Balance.fromJson(final Map<String, dynamic> json) =>
      _$BalanceFromJson(json);
}
