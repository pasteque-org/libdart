import 'package:archethic_lib_dart/src/model/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_fee.freezed.dart';
part 'transaction_fee.g.dart';

/// Represents the fee details for a transaction.
///
/// This can include the fee amount in UCO, exchange rates to fiat currencies,
/// and any errors encountered during fee calculation.
@freezed
abstract class TransactionFee with _$TransactionFee {
  /// Creates a [TransactionFee] instance.
  ///
  /// The [fee] is the transaction fee in the smallest unit of UCO.
  /// The [rates] provides exchange rates for the fee to fiat currencies like EUR and USD.
  /// The [errors] object contains details if any error occurred during fee calculation.
  const factory TransactionFee({
    /// The transaction fee amount in the smallest unit of UCO (e.g., nanoUCOs).
    final int? fee,

    /// Exchange rates for the transaction fee to various fiat currencies.
    final Rates? rates,

    /// Error details if the fee calculation failed or encountered issues.
    final TransactionFeeErrors? errors,
  }) = _TransactionFee;

  /// Private constructor for [TransactionFee].
  const TransactionFee._();

  /// Creates a [TransactionFee] instance from a JSON map.
  factory TransactionFee.fromJson(final Map<String, dynamic> json) =>
      _$TransactionFeeFromJson(json);
}

/// Represents exchange rates for a fee to fiat currencies.
@freezed
abstract class Rates with _$Rates {
  /// Creates a [Rates] instance.
  ///
  /// Contains optional fields for rates in EUR and USD.
  /// The [errors] object contains details if any error occurred during rate fetching.
  const factory Rates({
    /// The equivalent fee amount in EUR.
    final double? eur,

    /// The equivalent fee amount in USD.
    final double? usd,

    /// Error details if fetching rates failed.
    final TransactionFeeErrors? errors,
  }) = _Rates;

  /// Private constructor for [Rates].
  const Rates._();

  /// Creates a [Rates] instance from a JSON map.
  factory Rates.fromJson(final Map<String, dynamic> json) =>
      _$RatesFromJson(json);
}

/// Represents errors that may occur during transaction fee calculation or rate fetching.
@freezed
abstract class TransactionFeeErrors with _$TransactionFeeErrors {
  /// Creates a [TransactionFeeErrors] instance.
  ///
  /// The [data] field might contain specific data related to the error context.
  /// The [errors] field could contain nested error information.
  const factory TransactionFeeErrors({
    // TODO: Clarify the purpose and structure of 'data' in TransactionFeeErrors.
    /// Potentially problematic or erroneous data that contributed to the error.
    final Data? data,
    // TODO: Clarify if 'errors' here is meant to be a list or a more specific error type.
    /// Further nested error details.
    final TransactionFeeErrors? errors,
  }) = _TransactionFeeErrors;

  /// Private constructor for [TransactionFeeErrors].
  const TransactionFeeErrors._();

  /// Creates a [TransactionFeeErrors] instance from a JSON map.
  factory TransactionFeeErrors.fromJson(final Map<String, dynamic> json) =>
      _$TransactionFeeErrorsFromJson(json);
}
