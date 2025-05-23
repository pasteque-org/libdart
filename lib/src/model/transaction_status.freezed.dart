// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionStatus {

 String? get status;
/// Create a copy of TransactionStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionStatusCopyWith<TransactionStatus> get copyWith => _$TransactionStatusCopyWithImpl<TransactionStatus>(this as TransactionStatus, _$identity);

  /// Serializes this TransactionStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionStatus&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'TransactionStatus(status: $status)';
}


}

/// @nodoc
abstract mixin class $TransactionStatusCopyWith<$Res>  {
  factory $TransactionStatusCopyWith(TransactionStatus value, $Res Function(TransactionStatus) _then) = _$TransactionStatusCopyWithImpl;
@useResult
$Res call({
 String? status
});




}
/// @nodoc
class _$TransactionStatusCopyWithImpl<$Res>
    implements $TransactionStatusCopyWith<$Res> {
  _$TransactionStatusCopyWithImpl(this._self, this._then);

  final TransactionStatus _self;
  final $Res Function(TransactionStatus) _then;

/// Create a copy of TransactionStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TransactionStatus extends TransactionStatus {
  const _TransactionStatus({this.status}): super._();
  factory _TransactionStatus.fromJson(Map<String, dynamic> json) => _$TransactionStatusFromJson(json);

@override final  String? status;

/// Create a copy of TransactionStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionStatusCopyWith<_TransactionStatus> get copyWith => __$TransactionStatusCopyWithImpl<_TransactionStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionStatus&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'TransactionStatus(status: $status)';
}


}

/// @nodoc
abstract mixin class _$TransactionStatusCopyWith<$Res> implements $TransactionStatusCopyWith<$Res> {
  factory _$TransactionStatusCopyWith(_TransactionStatus value, $Res Function(_TransactionStatus) _then) = __$TransactionStatusCopyWithImpl;
@override @useResult
$Res call({
 String? status
});




}
/// @nodoc
class __$TransactionStatusCopyWithImpl<$Res>
    implements _$TransactionStatusCopyWith<$Res> {
  __$TransactionStatusCopyWithImpl(this._self, this._then);

  final _TransactionStatus _self;
  final $Res Function(_TransactionStatus) _then;

/// Create a copy of TransactionStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,}) {
  return _then(_TransactionStatus(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
