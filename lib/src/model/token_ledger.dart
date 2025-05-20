import 'package:archethic_lib_dart/src/model/token_transfer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_ledger.freezed.dart';
part 'token_ledger.g.dart';

/// Represents a set of token transfers to be performed on the token ledger.
///
/// This class acts as a container for a list of [TokenTransfer] objects,
/// collectively defining the operations on various tokens within a single transaction context.
/// The `makeCollectionsUnmodifiable: false` setting on the `@Freezed` annotation
/// means that the `transfers` list, while initialized, can be modified after object creation if not handled carefully.
@Freezed(makeCollectionsUnmodifiable: false)
abstract class TokenLedger with _$TokenLedger {
  /// Creates an instance of [TokenLedger].
  ///
  /// - [transfers]: A list of [TokenTransfer] objects, each detailing an individual token movement.
  ///                Defaults to an empty list.
  const factory TokenLedger({
    /// A list of token transfers to be executed. Each [TokenTransfer] specifies
    /// the details of an individual asset movement (e.g., amount, recipient, token address).
    /// Defaults to an empty list if no transfers are specified.
    @Default([]) final List<TokenTransfer> transfers,
  }) = _TokenLedger;

  /// Private constructor for `freezed` compatibility.
  const TokenLedger._();

  /// Creates a [TokenLedger] instance from a JSON map.
  ///
  /// This factory uses the `freezed` generated `_$TokenLedgerFromJson` function
  /// to deserialize the JSON data.
  factory TokenLedger.fromJson(final Map<String, dynamic> json) =>
      _$TokenLedgerFromJson(json);
}
