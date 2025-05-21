import 'dart:convert';

import 'package:archethic_lib_dart/src/model/uco.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'oracle_uco_price.freezed.dart';
part 'oracle_uco_price.g.dart';

/// Parses a JSON string into an [OracleUcoPrice] object.
OracleUcoPrice oracleUcoPriceFromJson(final String str) =>
    OracleUcoPrice.fromJson(json.decode(str));

/// Converts an [OracleUcoPrice] object into a JSON string.
String oracleUcoPriceToJson(final OracleUcoPrice data) =>
    json.encode(data.toJson());

/// Represents the price of UCO (Universal Coin) as reported by an oracle at a specific timestamp.
///
/// This is typically used to fetch historical or current UCO prices against fiat currencies like EUR or USD.
/// Example JSON structure: `{"1642347300":{"uco":{"eur":0.150324,"usd":0.1716}}`
/// where the top-level key is the timestamp.
/// However, this class structure represents the inner object associated with a timestamp.
@freezed
abstract class OracleUcoPrice with _$OracleUcoPrice {
  /// Creates an [OracleUcoPrice] instance.
  ///
  /// The [uco] parameter contains the price of UCO in different currencies.
  /// The [timestamp] parameter is the Unix timestamp for when this price was recorded.
  const factory OracleUcoPrice({final Uco? uco, final int? timestamp}) =
      _OracleUcoPrice;

  /// Private constructor for [OracleUcoPrice].
  const OracleUcoPrice._();

  /// Creates an [OracleUcoPrice] instance from a JSON map.
  factory OracleUcoPrice.fromJson(final Map<String, dynamic> json) =>
      _$OracleUcoPriceFromJson(json);
}
