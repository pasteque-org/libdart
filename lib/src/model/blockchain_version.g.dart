// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blockchain_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BlockchainVersionModel _$BlockchainVersionModelFromJson(
  Map<String, dynamic> json,
) => _BlockchainVersionModel(
  version: BlockchainVersion.fromJson(json['version'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BlockchainVersionModelToJson(
  _BlockchainVersionModel instance,
) => <String, dynamic>{'version': instance.version};

_BlockchainVersion _$BlockchainVersionFromJson(Map<String, dynamic> json) =>
    _BlockchainVersion(
      protocol: json['protocol'] as String,
      transaction: json['transaction'] as String,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$BlockchainVersionToJson(_BlockchainVersion instance) =>
    <String, dynamic>{
      'protocol': instance.protocol,
      'transaction': instance.transaction,
      'code': instance.code,
    };
