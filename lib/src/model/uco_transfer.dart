import 'package:freezed_annotation/freezed_annotation.dart';

part 'uco_transfer.freezed.dart';
part 'uco_transfer.g.dart';

/// Represents a single UCO (Universal Coin) transfer operation.
///
/// This class specifies the amount of UCO to be transferred and the recipient's address.
@Freezed(makeCollectionsUnmodifiable: false)
abstract class UCOTransfer with _$UCOTransfer {
  /// Creates a [UCOTransfer] instance.
  ///
  /// The [amount] is the quantity of UCO to transfer.
  /// The [to] is the recipient's address.
  const factory UCOTransfer({final int? amount, final String? to}) =
      _UCOTransfer;

  /// Private constructor for [UCOTransfer].
  const UCOTransfer._();

  /// Creates a [UCOTransfer] instance from a JSON map.
  factory UCOTransfer.fromJson(final Map<String, dynamic> json) =>
      _$UCOTransferFromJson(json);
}
