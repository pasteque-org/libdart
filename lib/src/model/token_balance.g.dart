// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenBalance _$TokenBalanceFromJson(Map<String, dynamic> json) =>
    _TokenBalance(
      address: json['address'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      tokenId: (json['tokenId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TokenBalanceToJson(_TokenBalance instance) =>
    <String, dynamic>{
      'address': instance.address,
      'amount': instance.amount,
      'tokenId': instance.tokenId,
    };
