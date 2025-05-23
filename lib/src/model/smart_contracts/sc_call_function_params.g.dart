// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sc_call_function_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SCCallFunctionParams _$SCCallFunctionParamsFromJson(
  Map<String, dynamic> json,
) => _SCCallFunctionParams(
  contract: json['contract'] as String,
  function: json['function'] as String,
  args: json['args'] as List<dynamic>,
  resolveLast: json['resolve_last'] as bool? ?? true,
);

Map<String, dynamic> _$SCCallFunctionParamsToJson(
  _SCCallFunctionParams instance,
) => <String, dynamic>{
  'contract': instance.contract,
  'function': instance.function,
  'args': instance.args,
  'resolve_last': instance.resolveLast,
};
