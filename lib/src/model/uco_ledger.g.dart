// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uco_ledger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UCOLedger _$UCOLedgerFromJson(Map<String, dynamic> json) => _UCOLedger(
  transfers:
      (json['transfers'] as List<dynamic>?)
          ?.map((e) => UCOTransfer.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$UCOLedgerToJson(_UCOLedger instance) =>
    <String, dynamic>{'transfers': instance.transfers};
