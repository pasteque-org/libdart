// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uco_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UCOTransfer _$UCOTransferFromJson(Map<String, dynamic> json) => _UCOTransfer(
  amount: (json['amount'] as num?)?.toInt(),
  to: json['to'] as String?,
);

Map<String, dynamic> _$UCOTransferToJson(_UCOTransfer instance) =>
    <String, dynamic>{'amount': instance.amount, 'to': instance.to};
