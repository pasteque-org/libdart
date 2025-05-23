// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Recipient {

/// The name of the action (function) to be called on the smart contract.
 String? get action;/// The address of the smart contract.
 String? get address;/// The arguments to be passed to the contract action.
/// This can be a list or a map, and its elements should be JSON serializable.
/// For consistency in signing and hashing, map keys within args are sorted recursively by [sortArgs].
 dynamic get args;
/// Create a copy of Recipient
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipientCopyWith<Recipient> get copyWith => _$RecipientCopyWithImpl<Recipient>(this as Recipient, _$identity);

  /// Serializes this Recipient to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Recipient&&(identical(other.action, action) || other.action == action)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.args, args));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,action,address,const DeepCollectionEquality().hash(args));

@override
String toString() {
  return 'Recipient(action: $action, address: $address, args: $args)';
}


}

/// @nodoc
abstract mixin class $RecipientCopyWith<$Res>  {
  factory $RecipientCopyWith(Recipient value, $Res Function(Recipient) _then) = _$RecipientCopyWithImpl;
@useResult
$Res call({
 String? action, String? address, dynamic args
});




}
/// @nodoc
class _$RecipientCopyWithImpl<$Res>
    implements $RecipientCopyWith<$Res> {
  _$RecipientCopyWithImpl(this._self, this._then);

  final Recipient _self;
  final $Res Function(Recipient) _then;

/// Create a copy of Recipient
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? action = freezed,Object? address = freezed,Object? args = freezed,}) {
  return _then(_self.copyWith(
action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,args: freezed == args ? _self.args : args // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Recipient extends Recipient {
  const _Recipient({this.action, this.address, this.args}): super._();
  factory _Recipient.fromJson(Map<String, dynamic> json) => _$RecipientFromJson(json);

/// The name of the action (function) to be called on the smart contract.
@override final  String? action;
/// The address of the smart contract.
@override final  String? address;
/// The arguments to be passed to the contract action.
/// This can be a list or a map, and its elements should be JSON serializable.
/// For consistency in signing and hashing, map keys within args are sorted recursively by [sortArgs].
@override final  dynamic args;

/// Create a copy of Recipient
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipientCopyWith<_Recipient> get copyWith => __$RecipientCopyWithImpl<_Recipient>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipientToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Recipient&&(identical(other.action, action) || other.action == action)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.args, args));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,action,address,const DeepCollectionEquality().hash(args));

@override
String toString() {
  return 'Recipient(action: $action, address: $address, args: $args)';
}


}

/// @nodoc
abstract mixin class _$RecipientCopyWith<$Res> implements $RecipientCopyWith<$Res> {
  factory _$RecipientCopyWith(_Recipient value, $Res Function(_Recipient) _then) = __$RecipientCopyWithImpl;
@override @useResult
$Res call({
 String? action, String? address, dynamic args
});




}
/// @nodoc
class __$RecipientCopyWithImpl<$Res>
    implements _$RecipientCopyWith<$Res> {
  __$RecipientCopyWithImpl(this._self, this._then);

  final _Recipient _self;
  final $Res Function(_Recipient) _then;

/// Create a copy of Recipient
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? action = freezed,Object? address = freezed,Object? args = freezed,}) {
  return _then(_Recipient(
action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,args: freezed == args ? _self.args : args // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
