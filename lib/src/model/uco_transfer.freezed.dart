// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uco_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UCOTransfer {

 int? get amount; String? get to;
/// Create a copy of UCOTransfer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UCOTransferCopyWith<UCOTransfer> get copyWith => _$UCOTransferCopyWithImpl<UCOTransfer>(this as UCOTransfer, _$identity);

  /// Serializes this UCOTransfer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UCOTransfer&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,to);

@override
String toString() {
  return 'UCOTransfer(amount: $amount, to: $to)';
}


}

/// @nodoc
abstract mixin class $UCOTransferCopyWith<$Res>  {
  factory $UCOTransferCopyWith(UCOTransfer value, $Res Function(UCOTransfer) _then) = _$UCOTransferCopyWithImpl;
@useResult
$Res call({
 int? amount, String? to
});




}
/// @nodoc
class _$UCOTransferCopyWithImpl<$Res>
    implements $UCOTransferCopyWith<$Res> {
  _$UCOTransferCopyWithImpl(this._self, this._then);

  final UCOTransfer _self;
  final $Res Function(UCOTransfer) _then;

/// Create a copy of UCOTransfer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = freezed,Object? to = freezed,}) {
  return _then(_self.copyWith(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UCOTransfer extends UCOTransfer {
  const _UCOTransfer({this.amount, this.to}): super._();
  factory _UCOTransfer.fromJson(Map<String, dynamic> json) => _$UCOTransferFromJson(json);

@override final  int? amount;
@override final  String? to;

/// Create a copy of UCOTransfer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UCOTransferCopyWith<_UCOTransfer> get copyWith => __$UCOTransferCopyWithImpl<_UCOTransfer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UCOTransferToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UCOTransfer&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,to);

@override
String toString() {
  return 'UCOTransfer(amount: $amount, to: $to)';
}


}

/// @nodoc
abstract mixin class _$UCOTransferCopyWith<$Res> implements $UCOTransferCopyWith<$Res> {
  factory _$UCOTransferCopyWith(_UCOTransfer value, $Res Function(_UCOTransfer) _then) = __$UCOTransferCopyWithImpl;
@override @useResult
$Res call({
 int? amount, String? to
});




}
/// @nodoc
class __$UCOTransferCopyWithImpl<$Res>
    implements _$UCOTransferCopyWith<$Res> {
  __$UCOTransferCopyWithImpl(this._self, this._then);

  final _UCOTransfer _self;
  final $Res Function(_UCOTransfer) _then;

/// Create a copy of UCOTransfer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = freezed,Object? to = freezed,}) {
  return _then(_UCOTransfer(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
