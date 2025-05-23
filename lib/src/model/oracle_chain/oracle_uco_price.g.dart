// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oracle_uco_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OracleUcoPrice _$OracleUcoPriceFromJson(Map<String, dynamic> json) =>
    _OracleUcoPrice(
      uco:
          json['uco'] == null
              ? null
              : Uco.fromJson(json['uco'] as Map<String, dynamic>),
      timestamp: (json['timestamp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OracleUcoPriceToJson(_OracleUcoPrice instance) =>
    <String, dynamic>{'uco': instance.uco, 'timestamp': instance.timestamp};
