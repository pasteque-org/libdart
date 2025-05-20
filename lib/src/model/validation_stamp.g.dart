// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_stamp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ValidationStamp _$ValidationStampFromJson(Map<String, dynamic> json) =>
    _ValidationStamp(
      ledgerOperations:
          json['ledgerOperations'] == null
              ? null
              : LedgerOperations.fromJson(
                json['ledgerOperations'] as Map<String, dynamic>,
              ),
      proofOfIntegrity: json['proofOfIntegrity'] as String?,
      proofOfWork: json['proofOfWork'] as String?,
      signature: json['signature'] as String?,
      timestamp: (json['timestamp'] as num?)?.toInt(),
      protocolVersion: (json['protocolVersion'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ValidationStampToJson(_ValidationStamp instance) =>
    <String, dynamic>{
      'ledgerOperations': instance.ledgerOperations,
      'proofOfIntegrity': instance.proofOfIntegrity,
      'proofOfWork': instance.proofOfWork,
      'signature': instance.signature,
      'timestamp': instance.timestamp,
      'protocolVersion': instance.protocolVersion,
    };
