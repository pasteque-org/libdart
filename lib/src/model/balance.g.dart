// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Balance _$BalanceFromJson(Map<String, dynamic> json) => _Balance(
  token:
      (json['token'] as List<dynamic>?)
          ?.map((e) => TokenBalance.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  uco: (json['uco'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$BalanceToJson(_Balance instance) => <String, dynamic>{
  'token': instance.token,
  'uco': instance.uco,
};
