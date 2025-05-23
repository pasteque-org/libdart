// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Recipient _$RecipientFromJson(Map<String, dynamic> json) => _Recipient(
  action: json['action'] as String?,
  address: json['address'] as String?,
  args: json['args'],
);

Map<String, dynamic> _$RecipientToJson(_Recipient instance) =>
    <String, dynamic>{
      'action': instance.action,
      'address': instance.address,
      'args': instance.args,
    };
