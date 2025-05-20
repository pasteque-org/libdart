// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_ledger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenLedger _$TokenLedgerFromJson(Map<String, dynamic> json) => _TokenLedger(
  transfers:
      (json['transfers'] as List<dynamic>?)
          ?.map((e) => TokenTransfer.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$TokenLedgerToJson(_TokenLedger instance) =>
    <String, dynamic>{'transfers': instance.transfers};
