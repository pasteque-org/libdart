// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenTransfer _$TokenTransferFromJson(Map<String, dynamic> json) =>
    _TokenTransfer(
      amount: (json['amount'] as num?)?.toInt(),
      to: json['to'] as String?,
      tokenAddress: json['tokenAddress'] as String?,
      tokenId: (json['tokenId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TokenTransferToJson(_TokenTransfer instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'to': instance.to,
      'tokenAddress': instance.tokenAddress,
      'tokenId': instance.tokenId,
    };
