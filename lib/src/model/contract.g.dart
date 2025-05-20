// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContractManifest _$ContractManifestFromJson(Map<String, dynamic> json) =>
    _ContractManifest(
      abi: WasmABI.fromJson(json['abi'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContractManifestToJson(_ContractManifest instance) =>
    <String, dynamic>{'abi': instance.abi};

_WasmABI _$WasmABIFromJson(Map<String, dynamic> json) => _WasmABI(
  state: Map<String, String>.from(json['state'] as Map),
  functions: (json['functions'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, WASMFunctionABI.fromJson(e as Map<String, dynamic>)),
  ),
);

Map<String, dynamic> _$WasmABIToJson(_WasmABI instance) => <String, dynamic>{
  'state': instance.state,
  'functions': instance.functions,
};

_WASMFunctionABI _$WASMFunctionABIFromJson(Map<String, dynamic> json) =>
    _WASMFunctionABI(
      type: json['type'] as String,
      triggerType: json['triggerType'] as String?,
      input: json['input'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$WASMFunctionABIToJson(_WASMFunctionABI instance) =>
    <String, dynamic>{
      'type': instance.type,
      'triggerType': instance.triggerType,
      'input': instance.input,
    };

_ContractAction _$ContractActionFromJson(Map<String, dynamic> json) =>
    _ContractAction(
      name: json['name'] as String,
      parameters:
          (json['parameters'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$ContractActionToJson(_ContractAction instance) =>
    <String, dynamic>{'name': instance.name, 'parameters': instance.parameters};

_Contract _$ContractFromJson(Map<String, dynamic> json) => _Contract(
  bytecode: json['bytecode'] as String?,
  manifest: ContractManifest.fromJson(json['manifest'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ContractToJson(_Contract instance) => <String, dynamic>{
  'bytecode': instance.bytecode,
  'manifest': instance.manifest,
};
