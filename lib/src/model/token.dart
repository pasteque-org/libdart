import 'dart:convert';

import 'package:archethic_lib_dart/src/model/ownership.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

/// Represents a token on the Archethic blockchain.
///
/// This class encapsulates various properties of a token, such as its address, name, supply,
/// type, and associated metadata like properties, collection items, and AEIP standards compliance.
@freezed
abstract class Token with _$Token {
  /// Creates a [Token] instance.
  ///
  /// All parameters are optional or have default values, defining the characteristics of the token.
  const factory Token({
    /// The address of the token contract.
    final String? address,

    /// The genesis transaction hash that created this token.
    final String? genesis,

    /// The human-readable name of the token (e.g., "MyToken").
    final String? name,

    /// A unique identifier for the token, which might be different from its address or symbol.
    final String? id,

    /// The total supply of the token.
    final int? supply,

    /// The type of the token (e.g., "fungible", "non-fungible", "semi-fungible").
    final String? type,

    /// The number of decimal places the token can be divided into.
    final int? decimals,

    /// The symbol or ticker for the token (e.g., "MTK").
    final String? symbol,

    /// A map of custom properties associated with the token. Defaults to an empty map.
    @Default({}) final Map<String, dynamic> properties,

    /// For Non-Fungible Tokens (NFTs) or Semi-Fungible Tokens, this list can hold metadata for individual items in a collection.
    /// Defaults to an empty list.
    @Default([]) final List<Map<String, dynamic>> collection,

    /// A list of Archethic Evolution Improvement Proposal (AEIP) numbers that this token complies with.
    /// Defaults to an empty list.
    @Default([]) final List<int>? aeip,

    /// A list of [Ownership] objects defining authorizations or delegations related to the token.
    /// Defaults to an empty list.
    @Default([]) final List<Ownership>? ownerships,
  }) = _Token;

  /// Private constructor for [Token].
  const Token._();

  /// Creates a [Token] instance from a JSON map.
  factory Token.fromJson(final Map<String, dynamic> json) =>
      _$TokenFromJson(json);

  /// Converts the token data to a JSON string suitable for inclusion in transaction data content.
  ///
  /// This method serializes specific fields relevant for on-chain representation.
  String tokenToJsonForTxDataContent() {
    return jsonEncode(toJsonForTxDataContent());
  }

  /// Converts the token data to a JSON map suitable for inclusion in transaction data content.
  ///
  /// This method selects and formats specific fields for on-chain storage,
  /// excluding fields like [address] and [genesis] which are typically context-dependent or derived.
  Map<String, dynamic> toJsonForTxDataContent() {
    final json = <String, dynamic>{
      'name': name,
      'supply': supply,
      'type': type,
      if (decimals != null) 'decimals': decimals,
      'symbol': symbol,
      'properties': properties,
      if (collection.isNotEmpty) 'collection': collection,
      'aeip': aeip,
    };

    if (ownerships != null && ownerships!.isNotEmpty) {
      json['ownerships'] = List<dynamic>.from(
        ownerships!.map((final x) => x.toJson()),
      );
    }

    return json;
  }
}
