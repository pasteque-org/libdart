// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorized_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthorizedKey _$AuthorizedKeyFromJson(Map<String, dynamic> json) =>
    _AuthorizedKey(
      publicKey: json['publicKey'] as String?,
      encryptedSecretKey: json['encryptedSecretKey'] as String?,
    );

Map<String, dynamic> _$AuthorizedKeyToJson(_AuthorizedKey instance) =>
    <String, dynamic>{
      'publicKey': instance.publicKey,
      'encryptedSecretKey': instance.encryptedSecretKey,
    };
