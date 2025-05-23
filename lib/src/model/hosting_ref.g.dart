// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hosting_ref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HostingRef _$HostingRefFromJson(Map<String, dynamic> json) => _HostingRef(
  aewebVersion: (json['aewebVersion'] as num?)?.toInt() ?? 1,
  hashFunction: json['hashFunction'] as String? ?? 'sha1',
  metaData:
      (json['metaData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          HostingRefContentMetaData.fromJson(e as Map<String, dynamic>),
        ),
      ) ??
      const {},
  sslCertificate: json['sslCertificate'] as String? ?? '',
);

Map<String, dynamic> _$HostingRefToJson(_HostingRef instance) =>
    <String, dynamic>{
      'aewebVersion': instance.aewebVersion,
      'hashFunction': instance.hashFunction,
      'metaData': instance.metaData,
      'sslCertificate': instance.sslCertificate,
    };
