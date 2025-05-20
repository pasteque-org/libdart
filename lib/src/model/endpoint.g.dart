// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Endpoint _$EndpointFromJson(Map<String, dynamic> json) => _Endpoint(
  ip: json['ip'] as String? ?? '',
  port: (json['port'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$EndpointToJson(_Endpoint instance) => <String, dynamic>{
  'ip': instance.ip,
  'port': instance.port,
};
