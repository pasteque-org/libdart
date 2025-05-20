import 'package:archethic_lib_dart/src/model/contract.dart';
import 'package:archethic_lib_dart/src/model/ledger.dart';
import 'package:archethic_lib_dart/src/model/ownership.dart';
import 'package:archethic_lib_dart/src/model/recipient.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

/// Represents the data section of a transaction.
///
/// This section can contain various types of information depending on the transaction's purpose,
/// such as smart contract details, content hosting, ownership proofs, ledger operations, or recipient lists.
@Freezed(makeCollectionsUnmodifiable: false)
abstract class Data with _$Data {
  /// Creates a [Data] instance.
  ///
  /// All parameters are optional and represent different facets of the transaction data.
  const factory Data({
    /// Hexadecimal representation of smart contract code.
    final String? code,

    /// Detailed information about a smart contract, if applicable.
    final Contract? contract,

    /// A free-form field for data hosting, which can be a string or hexadecimal data.
    final String? content,

    /// A list of [Ownership] objects, defining authorizations or delegations.
    /// These contain secrets and authorized public keys to prove ownership.
    /// Defaults to an empty list.
    @Default([]) final List<Ownership> ownerships,

    /// Ledger operations, such as asset transfers.
    final Ledger? ledger,

    /// A list of [Recipient] objects for non-asset transfer transactions.
    /// This is typically used for smart contract interactions to specify who the transaction is directed towards.
    /// Defaults to an empty list.
    @Default([]) final List<Recipient> recipients,
  }) = _Data;

  /// Private constructor for [Data].
  const Data._();

  /// Creates a [Data] instance from a JSON map.
  factory Data.fromJson(final Map<String, dynamic> json) =>
      _$DataFromJson(json);
}
