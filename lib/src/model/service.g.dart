// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Service _$ServiceFromJson(Map<String, dynamic> json) => _Service(
  derivationPath: json['derivationPath'] as String,
  curve: json['curve'] as String? ?? 'ed25519',
  hashAlgo: json['hashAlgo'] as String? ?? 'sha256',
);

Map<String, dynamic> _$ServiceToJson(_Service instance) => <String, dynamic>{
  'derivationPath': instance.derivationPath,
  'curve': instance.curve,
  'hashAlgo': instance.hashAlgo,
};
