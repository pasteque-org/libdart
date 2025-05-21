// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cross_validation_stamp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CrossValidationStamp {

/// The public key of the node that performed the cross-validation.
 String? get nodePublicKey;/// The signature of the cross-validating node over the content of the [ValidationStamp]
/// (or a hash of it) that this stamp is approving.
 String? get signature;
/// Create a copy of CrossValidationStamp
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CrossValidationStampCopyWith<CrossValidationStamp> get copyWith => _$CrossValidationStampCopyWithImpl<CrossValidationStamp>(this as CrossValidationStamp, _$identity);

  /// Serializes this CrossValidationStamp to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrossValidationStamp&&(identical(other.nodePublicKey, nodePublicKey) || other.nodePublicKey == nodePublicKey)&&(identical(other.signature, signature) || other.signature == signature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nodePublicKey,signature);

@override
String toString() {
  return 'CrossValidationStamp(nodePublicKey: $nodePublicKey, signature: $signature)';
}


}

/// @nodoc
abstract mixin class $CrossValidationStampCopyWith<$Res>  {
  factory $CrossValidationStampCopyWith(CrossValidationStamp value, $Res Function(CrossValidationStamp) _then) = _$CrossValidationStampCopyWithImpl;
@useResult
$Res call({
 String? nodePublicKey, String? signature
});




}
/// @nodoc
class _$CrossValidationStampCopyWithImpl<$Res>
    implements $CrossValidationStampCopyWith<$Res> {
  _$CrossValidationStampCopyWithImpl(this._self, this._then);

  final CrossValidationStamp _self;
  final $Res Function(CrossValidationStamp) _then;

/// Create a copy of CrossValidationStamp
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nodePublicKey = freezed,Object? signature = freezed,}) {
  return _then(_self.copyWith(
nodePublicKey: freezed == nodePublicKey ? _self.nodePublicKey : nodePublicKey // ignore: cast_nullable_to_non_nullable
as String?,signature: freezed == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CrossValidationStamp extends CrossValidationStamp {
  const _CrossValidationStamp({this.nodePublicKey, this.signature}): super._();
  factory _CrossValidationStamp.fromJson(Map<String, dynamic> json) => _$CrossValidationStampFromJson(json);

/// The public key of the node that performed the cross-validation.
@override final  String? nodePublicKey;
/// The signature of the cross-validating node over the content of the [ValidationStamp]
/// (or a hash of it) that this stamp is approving.
@override final  String? signature;

/// Create a copy of CrossValidationStamp
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CrossValidationStampCopyWith<_CrossValidationStamp> get copyWith => __$CrossValidationStampCopyWithImpl<_CrossValidationStamp>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CrossValidationStampToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CrossValidationStamp&&(identical(other.nodePublicKey, nodePublicKey) || other.nodePublicKey == nodePublicKey)&&(identical(other.signature, signature) || other.signature == signature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nodePublicKey,signature);

@override
String toString() {
  return 'CrossValidationStamp(nodePublicKey: $nodePublicKey, signature: $signature)';
}


}

/// @nodoc
abstract mixin class _$CrossValidationStampCopyWith<$Res> implements $CrossValidationStampCopyWith<$Res> {
  factory _$CrossValidationStampCopyWith(_CrossValidationStamp value, $Res Function(_CrossValidationStamp) _then) = __$CrossValidationStampCopyWithImpl;
@override @useResult
$Res call({
 String? nodePublicKey, String? signature
});




}
/// @nodoc
class __$CrossValidationStampCopyWithImpl<$Res>
    implements _$CrossValidationStampCopyWith<$Res> {
  __$CrossValidationStampCopyWithImpl(this._self, this._then);

  final _CrossValidationStamp _self;
  final $Res Function(_CrossValidationStamp) _then;

/// Create a copy of CrossValidationStamp
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nodePublicKey = freezed,Object? signature = freezed,}) {
  return _then(_CrossValidationStamp(
nodePublicKey: freezed == nodePublicKey ? _self.nodePublicKey : nodePublicKey // ignore: cast_nullable_to_non_nullable
as String?,signature: freezed == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
