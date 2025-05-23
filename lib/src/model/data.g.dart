// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  code: json['code'] as String?,
  contract:
      json['contract'] == null
          ? null
          : Contract.fromJson(json['contract'] as Map<String, dynamic>),
  content: json['content'] as String?,
  ownerships:
      (json['ownerships'] as List<dynamic>?)
          ?.map((e) => Ownership.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  ledger:
      json['ledger'] == null
          ? null
          : Ledger.fromJson(json['ledger'] as Map<String, dynamic>),
  recipients:
      (json['recipients'] as List<dynamic>?)
          ?.map((e) => Recipient.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'code': instance.code,
  'contract': instance.contract,
  'content': instance.content,
  'ownerships': instance.ownerships,
  'ledger': instance.ledger,
  'recipients': instance.recipients,
};
