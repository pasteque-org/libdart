import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_status.freezed.dart';
part 'transaction_status.g.dart';

/// Parses a JSON string into a [TransactionStatus] object.
TransactionStatus transactionStatusFromJson(final String str) =>
    TransactionStatus.fromJson(json.decode(str));

/// Represents the status of a transaction.
///
/// This typically indicates whether a transaction has been accepted, rejected, is pending, or its final state.
@freezed
abstract class TransactionStatus with _$TransactionStatus {
  /// Creates a [TransactionStatus] instance.
  ///
  /// The [status] parameter is an optional string describing the current state of the transaction.
  const factory TransactionStatus({final String? status}) = _TransactionStatus;

  /// Private constructor for [TransactionStatus].
  const TransactionStatus._();

  /// Creates a [TransactionStatus] instance from a JSON map.
  factory TransactionStatus.fromJson(final Map<String, dynamic> json) =>
      _$TransactionStatusFromJson(json);
}
