import 'package:freezed_annotation/freezed_annotation.dart';

part 'uco.freezed.dart';
part 'uco.g.dart';

/// Represents the value of UCO (Universal Coin) in different fiat currencies.
///
/// This class is typically used in contexts like oracle price reporting or displaying balances
/// with their fiat equivalents.
@freezed
abstract class Uco with _$Uco {
  /// Creates a [Uco] instance.
  ///
  /// The [eur] parameter is the value of UCO in Euros.
  /// The [usd] parameter is the value of UCO in US Dollars.
  const factory Uco({final double? eur, final double? usd}) = _Uco;

  /// Private constructor for [Uco].
  const Uco._();

  /// Creates a [Uco] instance from a JSON map.
  factory Uco.fromJson(final Map<String, dynamic> json) => _$UcoFromJson(json);
}
