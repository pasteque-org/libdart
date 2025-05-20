// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_operations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LedgerOperations _$LedgerOperationsFromJson(Map<String, dynamic> json) =>
    _LedgerOperations(
      fee: (json['fee'] as num?)?.toInt(),
      transactionMovements:
          (json['transactionMovements'] as List<dynamic>?)
              ?.map(
                (e) => TransactionMovement.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      unspentOutputs:
          (json['unspentOutputs'] as List<dynamic>?)
              ?.map((e) => UnspentOutputs.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      consumedInputs:
          (json['consumedInputs'] as List<dynamic>?)
              ?.map((e) => ConsumedInputs.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$LedgerOperationsToJson(_LedgerOperations instance) =>
    <String, dynamic>{
      'fee': instance.fee,
      'transactionMovements': instance.transactionMovements,
      'unspentOutputs': instance.unspentOutputs,
      'consumedInputs': instance.consumedInputs,
    };
