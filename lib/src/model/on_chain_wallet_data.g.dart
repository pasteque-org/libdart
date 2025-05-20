// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_chain_wallet_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OnChainWalletData _$OnChainWalletDataFromJson(Map<String, dynamic> json) =>
    _OnChainWalletData(
      encodedWalletKey: json['encodedWalletKey'] as String?,
      encryptedWallet: json['encryptedWallet'] as String?,
    );

Map<String, dynamic> _$OnChainWalletDataToJson(_OnChainWalletData instance) =>
    <String, dynamic>{
      'encodedWalletKey': instance.encodedWalletKey,
      'encryptedWallet': instance.encryptedWallet,
    };
