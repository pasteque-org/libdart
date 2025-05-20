// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionInput _$TransactionInputFromJson(Map<String, dynamic> json) =>
    _TransactionInput(
      amount: (json['amount'] as num?)?.toInt(),
      from: json['from'] as String?,
      tokenAddress: json['tokenAddress'] as String?,
      spent: json['spent'] as bool?,
      timestamp: (json['timestamp'] as num?)?.toInt(),
      type: json['type'] as String?,
      tokenId: (json['tokenId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TransactionInputToJson(_TransactionInput instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'from': instance.from,
      'tokenAddress': instance.tokenAddress,
      'spent': instance.spent,
      'timestamp': instance.timestamp,
      'type': instance.type,
      'tokenId': instance.tokenId,
    };
