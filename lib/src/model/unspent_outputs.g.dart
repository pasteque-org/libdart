// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unspent_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UnspentOutputs _$UnspentOutputsFromJson(Map<String, dynamic> json) =>
    _UnspentOutputs(
      amount: (json['amount'] as num?)?.toInt(),
      tokenAddress: json['tokenAddress'] as String?,
      type: json['type'] as String?,
      from: json['from'] as String?,
      tokenId: (json['tokenId'] as num?)?.toInt(),
      timestamp: (json['timestamp'] as num?)?.toInt(),
      state: json['state'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$UnspentOutputsToJson(_UnspentOutputs instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'tokenAddress': instance.tokenAddress,
      'type': instance.type,
      'from': instance.from,
      'tokenId': instance.tokenId,
      'timestamp': instance.timestamp,
      'state': instance.state,
    };
