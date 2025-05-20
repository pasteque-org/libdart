// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_operations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LedgerOperations {

/// Transaction fee (distributed over the node rewards)
 int? get fee;/// Assets transfers
 List<TransactionMovement> get transactionMovements;/// Remaining unspent outputs
 List<UnspentOutputs> get unspentOutputs;/// Remaining unspent outputs
 List<ConsumedInputs> get consumedInputs;
/// Create a copy of LedgerOperations
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LedgerOperationsCopyWith<LedgerOperations> get copyWith => _$LedgerOperationsCopyWithImpl<LedgerOperations>(this as LedgerOperations, _$identity);

  /// Serializes this LedgerOperations to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LedgerOperations&&(identical(other.fee, fee) || other.fee == fee)&&const DeepCollectionEquality().equals(other.transactionMovements, transactionMovements)&&const DeepCollectionEquality().equals(other.unspentOutputs, unspentOutputs)&&const DeepCollectionEquality().equals(other.consumedInputs, consumedInputs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fee,const DeepCollectionEquality().hash(transactionMovements),const DeepCollectionEquality().hash(unspentOutputs),const DeepCollectionEquality().hash(consumedInputs));

@override
String toString() {
  return 'LedgerOperations(fee: $fee, transactionMovements: $transactionMovements, unspentOutputs: $unspentOutputs, consumedInputs: $consumedInputs)';
}


}

/// @nodoc
abstract mixin class $LedgerOperationsCopyWith<$Res>  {
  factory $LedgerOperationsCopyWith(LedgerOperations value, $Res Function(LedgerOperations) _then) = _$LedgerOperationsCopyWithImpl;
@useResult
$Res call({
 int? fee, List<TransactionMovement> transactionMovements, List<UnspentOutputs> unspentOutputs, List<ConsumedInputs> consumedInputs
});




}
/// @nodoc
class _$LedgerOperationsCopyWithImpl<$Res>
    implements $LedgerOperationsCopyWith<$Res> {
  _$LedgerOperationsCopyWithImpl(this._self, this._then);

  final LedgerOperations _self;
  final $Res Function(LedgerOperations) _then;

/// Create a copy of LedgerOperations
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fee = freezed,Object? transactionMovements = null,Object? unspentOutputs = null,Object? consumedInputs = null,}) {
  return _then(_self.copyWith(
fee: freezed == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as int?,transactionMovements: null == transactionMovements ? _self.transactionMovements : transactionMovements // ignore: cast_nullable_to_non_nullable
as List<TransactionMovement>,unspentOutputs: null == unspentOutputs ? _self.unspentOutputs : unspentOutputs // ignore: cast_nullable_to_non_nullable
as List<UnspentOutputs>,consumedInputs: null == consumedInputs ? _self.consumedInputs : consumedInputs // ignore: cast_nullable_to_non_nullable
as List<ConsumedInputs>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _LedgerOperations extends LedgerOperations {
  const _LedgerOperations({this.fee, final  List<TransactionMovement> transactionMovements = const [], final  List<UnspentOutputs> unspentOutputs = const [], final  List<ConsumedInputs> consumedInputs = const []}): _transactionMovements = transactionMovements,_unspentOutputs = unspentOutputs,_consumedInputs = consumedInputs,super._();
  factory _LedgerOperations.fromJson(Map<String, dynamic> json) => _$LedgerOperationsFromJson(json);

/// Transaction fee (distributed over the node rewards)
@override final  int? fee;
/// Assets transfers
 final  List<TransactionMovement> _transactionMovements;
/// Assets transfers
@override@JsonKey() List<TransactionMovement> get transactionMovements {
  if (_transactionMovements is EqualUnmodifiableListView) return _transactionMovements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactionMovements);
}

/// Remaining unspent outputs
 final  List<UnspentOutputs> _unspentOutputs;
/// Remaining unspent outputs
@override@JsonKey() List<UnspentOutputs> get unspentOutputs {
  if (_unspentOutputs is EqualUnmodifiableListView) return _unspentOutputs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_unspentOutputs);
}

/// Remaining unspent outputs
 final  List<ConsumedInputs> _consumedInputs;
/// Remaining unspent outputs
@override@JsonKey() List<ConsumedInputs> get consumedInputs {
  if (_consumedInputs is EqualUnmodifiableListView) return _consumedInputs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_consumedInputs);
}


/// Create a copy of LedgerOperations
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LedgerOperationsCopyWith<_LedgerOperations> get copyWith => __$LedgerOperationsCopyWithImpl<_LedgerOperations>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LedgerOperationsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LedgerOperations&&(identical(other.fee, fee) || other.fee == fee)&&const DeepCollectionEquality().equals(other._transactionMovements, _transactionMovements)&&const DeepCollectionEquality().equals(other._unspentOutputs, _unspentOutputs)&&const DeepCollectionEquality().equals(other._consumedInputs, _consumedInputs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fee,const DeepCollectionEquality().hash(_transactionMovements),const DeepCollectionEquality().hash(_unspentOutputs),const DeepCollectionEquality().hash(_consumedInputs));

@override
String toString() {
  return 'LedgerOperations(fee: $fee, transactionMovements: $transactionMovements, unspentOutputs: $unspentOutputs, consumedInputs: $consumedInputs)';
}


}

/// @nodoc
abstract mixin class _$LedgerOperationsCopyWith<$Res> implements $LedgerOperationsCopyWith<$Res> {
  factory _$LedgerOperationsCopyWith(_LedgerOperations value, $Res Function(_LedgerOperations) _then) = __$LedgerOperationsCopyWithImpl;
@override @useResult
$Res call({
 int? fee, List<TransactionMovement> transactionMovements, List<UnspentOutputs> unspentOutputs, List<ConsumedInputs> consumedInputs
});




}
/// @nodoc
class __$LedgerOperationsCopyWithImpl<$Res>
    implements _$LedgerOperationsCopyWith<$Res> {
  __$LedgerOperationsCopyWithImpl(this._self, this._then);

  final _LedgerOperations _self;
  final $Res Function(_LedgerOperations) _then;

/// Create a copy of LedgerOperations
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fee = freezed,Object? transactionMovements = null,Object? unspentOutputs = null,Object? consumedInputs = null,}) {
  return _then(_LedgerOperations(
fee: freezed == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as int?,transactionMovements: null == transactionMovements ? _self._transactionMovements : transactionMovements // ignore: cast_nullable_to_non_nullable
as List<TransactionMovement>,unspentOutputs: null == unspentOutputs ? _self._unspentOutputs : unspentOutputs // ignore: cast_nullable_to_non_nullable
as List<UnspentOutputs>,consumedInputs: null == consumedInputs ? _self._consumedInputs : consumedInputs // ignore: cast_nullable_to_non_nullable
as List<ConsumedInputs>,
  ));
}


}

// dart format on
