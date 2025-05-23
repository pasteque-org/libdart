// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Node _$NodeFromJson(Map<String, dynamic> json) => _Node(
  authorized: json['authorized'] as bool?,
  available: json['available'] as bool?,
  averageAvailability: (json['averageAvailability'] as num?)?.toDouble(),
  firstPublicKey: json['firstPublicKey'] as String?,
  geoPatch: json['geoPatch'] as String?,
  ip: json['ip'] as String?,
  lastPublicKey: json['lastPublicKey'] as String?,
  networkPatch: json['networkPatch'] as String?,
  port: (json['port'] as num?)?.toInt(),
  rewardAddress: json['rewardAddress'] as String?,
  enrollmentDate: (json['enrollmentDate'] as num?)?.toInt(),
  authorizationDate: (json['authorizationDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$NodeToJson(_Node instance) => <String, dynamic>{
  'authorized': instance.authorized,
  'available': instance.available,
  'averageAvailability': instance.averageAvailability,
  'firstPublicKey': instance.firstPublicKey,
  'geoPatch': instance.geoPatch,
  'ip': instance.ip,
  'lastPublicKey': instance.lastPublicKey,
  'networkPatch': instance.networkPatch,
  'port': instance.port,
  'rewardAddress': instance.rewardAddress,
  'enrollmentDate': instance.enrollmentDate,
  'authorizationDate': instance.authorizationDate,
};
