// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sc_call_function_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SCCallFunctionRequest _$SCCallFunctionRequestFromJson(
  Map<String, dynamic> json,
) => _SCCallFunctionRequest(
  jsonrpc: json['jsonrpc'] as String? ?? '2.0',
  method: json['method'] as String,
  id: (json['id'] as num?)?.toInt() ?? 1,
  params: SCCallFunctionParams.fromJson(json['params'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SCCallFunctionRequestToJson(
  _SCCallFunctionRequest instance,
) => <String, dynamic>{
  'jsonrpc': instance.jsonrpc,
  'method': instance.method,
  'id': instance.id,
  'params': instance.params,
};
