// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sc_call_function_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SCCallFunctionRequest _$SCCallFunctionRequestFromJson(
  Map<String, dynamic> json,
) => _SCCallFunctionRequest(
  method: json['method'] as String,
  params: SCCallFunctionParams.fromJson(json['params'] as Map<String, dynamic>),
  jsonrpc: json['jsonrpc'] as String? ?? '2.0',
  id: (json['id'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$SCCallFunctionRequestToJson(
  _SCCallFunctionRequest instance,
) => <String, dynamic>{
  'method': instance.method,
  'params': instance.params,
  'jsonrpc': instance.jsonrpc,
  'id': instance.id,
};
