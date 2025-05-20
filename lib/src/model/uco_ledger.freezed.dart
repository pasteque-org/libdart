// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uco_ledger.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UCOLedger {

 List<UCOTransfer> get transfers;
/// Create a copy of UCOLedger
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UCOLedgerCopyWith<UCOLedger> get copyWith => _$UCOLedgerCopyWithImpl<UCOLedger>(this as UCOLedger, _$identity);

  /// Serializes this UCOLedger to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UCOLedger&&const DeepCollectionEquality().equals(other.transfers, transfers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(transfers));

@override
String toString() {
  return 'UCOLedger(transfers: $transfers)';
}


}

/// @nodoc
abstract mixin class $UCOLedgerCopyWith<$Res>  {
  factory $UCOLedgerCopyWith(UCOLedger value, $Res Function(UCOLedger) _then) = _$UCOLedgerCopyWithImpl;
@useResult
$Res call({
 List<UCOTransfer> transfers
});




}
/// @nodoc
class _$UCOLedgerCopyWithImpl<$Res>
    implements $UCOLedgerCopyWith<$Res> {
  _$UCOLedgerCopyWithImpl(this._self, this._then);

  final UCOLedger _self;
  final $Res Function(UCOLedger) _then;

/// Create a copy of UCOLedger
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transfers = null,}) {
  return _then(_self.copyWith(
transfers: null == transfers ? _self.transfers : transfers // ignore: cast_nullable_to_non_nullable
as List<UCOTransfer>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UCOLedger extends UCOLedger {
  const _UCOLedger({this.transfers = const []}): super._();
  factory _UCOLedger.fromJson(Map<String, dynamic> json) => _$UCOLedgerFromJson(json);

@override@JsonKey() final  List<UCOTransfer> transfers;

/// Create a copy of UCOLedger
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UCOLedgerCopyWith<_UCOLedger> get copyWith => __$UCOLedgerCopyWithImpl<_UCOLedger>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UCOLedgerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UCOLedger&&const DeepCollectionEquality().equals(other.transfers, transfers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(transfers));

@override
String toString() {
  return 'UCOLedger(transfers: $transfers)';
}


}

/// @nodoc
abstract mixin class _$UCOLedgerCopyWith<$Res> implements $UCOLedgerCopyWith<$Res> {
  factory _$UCOLedgerCopyWith(_UCOLedger value, $Res Function(_UCOLedger) _then) = __$UCOLedgerCopyWithImpl;
@override @useResult
$Res call({
 List<UCOTransfer> transfers
});




}
/// @nodoc
class __$UCOLedgerCopyWithImpl<$Res>
    implements _$UCOLedgerCopyWith<$Res> {
  __$UCOLedgerCopyWithImpl(this._self, this._then);

  final _UCOLedger _self;
  final $Res Function(_UCOLedger) _then;

/// Create a copy of UCOLedger
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transfers = null,}) {
  return _then(_UCOLedger(
transfers: null == transfers ? _self.transfers : transfers // ignore: cast_nullable_to_non_nullable
as List<UCOTransfer>,
  ));
}


}

// dart format on
