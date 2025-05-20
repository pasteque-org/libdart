import 'package:archethic_lib_dart/src/model/token_ledger.dart';
import 'package:archethic_lib_dart/src/model/uco_ledger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ledger.freezed.dart';
part 'ledger.g.dart';

/// Represents the ledger operations to be performed, potentially involving UCO and/or tokens.
///
/// This class acts as a container for specific ledger types, such as [TokenLedger] for token operations
/// and [UCOLedger] for UCO (native currency) operations. A transaction might affect
/// one or both of these ledgers.
@freezed
abstract class Ledger with _$Ledger {
  /// Creates an instance of [Ledger].
  ///
  /// - [token]: An optional [TokenLedger] instance representing token-specific ledger operations.
  ///            This would be non-null if the transaction involves tokens.
  /// - [uco]: An optional [UCOLedger] instance representing UCO-specific ledger operations.
  ///          This would be non-null if the transaction involves UCO.
  const factory Ledger({final TokenLedger? token, final UCOLedger? uco}) =
      _Ledger;

  /// Private constructor for `freezed` compatibility.
  const Ledger._();

  /// Creates a [Ledger] instance from a JSON map.
  ///
  /// This factory uses the `freezed` generated `_$LedgerFromJson` function
  /// to deserialize the JSON data into a [Ledger] object.
  factory Ledger.fromJson(final Map<String, dynamic> json) =>
      _$LedgerFromJson(json);
}
