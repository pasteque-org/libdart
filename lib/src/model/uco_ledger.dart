import 'package:archethic_lib_dart/src/model/uco_transfer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'uco_ledger.freezed.dart';
part 'uco_ledger.g.dart';

/// Represents a set of UCO (Universal Coin) transfer operations to be recorded on the ledger.
///
/// This class typically groups multiple [UCOTransfer] objects that form part of a single transaction or ledger update.
@Freezed(makeCollectionsUnmodifiable: false)
abstract class UCOLedger with _$UCOLedger {
  /// Creates a [UCOLedger] instance.
  ///
  /// The [transfers] parameter is a list of [UCOTransfer] objects, defaulting to an empty list.
  const factory UCOLedger({@Default([]) final List<UCOTransfer> transfers}) =
      _UCOLedger;

  /// Private constructor for [UCOLedger].
  const UCOLedger._();

  /// Creates a [UCOLedger] instance from a JSON map.
  factory UCOLedger.fromJson(final Map<String, dynamic> json) =>
      _$UCOLedgerFromJson(json);
}
