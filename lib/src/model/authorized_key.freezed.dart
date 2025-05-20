// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authorized_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthorizedKey {

 String? get publicKey; String? get encryptedSecretKey;
/// Create a copy of AuthorizedKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorizedKeyCopyWith<AuthorizedKey> get copyWith => _$AuthorizedKeyCopyWithImpl<AuthorizedKey>(this as AuthorizedKey, _$identity);

  /// Serializes this AuthorizedKey to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorizedKey&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.encryptedSecretKey, encryptedSecretKey) || other.encryptedSecretKey == encryptedSecretKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,publicKey,encryptedSecretKey);

@override
String toString() {
  return 'AuthorizedKey(publicKey: $publicKey, encryptedSecretKey: $encryptedSecretKey)';
}


}

/// @nodoc
abstract mixin class $AuthorizedKeyCopyWith<$Res>  {
  factory $AuthorizedKeyCopyWith(AuthorizedKey value, $Res Function(AuthorizedKey) _then) = _$AuthorizedKeyCopyWithImpl;
@useResult
$Res call({
 String? publicKey, String? encryptedSecretKey
});




}
/// @nodoc
class _$AuthorizedKeyCopyWithImpl<$Res>
    implements $AuthorizedKeyCopyWith<$Res> {
  _$AuthorizedKeyCopyWithImpl(this._self, this._then);

  final AuthorizedKey _self;
  final $Res Function(AuthorizedKey) _then;

/// Create a copy of AuthorizedKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? publicKey = freezed,Object? encryptedSecretKey = freezed,}) {
  return _then(_self.copyWith(
publicKey: freezed == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as String?,encryptedSecretKey: freezed == encryptedSecretKey ? _self.encryptedSecretKey : encryptedSecretKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AuthorizedKey extends AuthorizedKey {
  const _AuthorizedKey({this.publicKey, this.encryptedSecretKey}): super._();
  factory _AuthorizedKey.fromJson(Map<String, dynamic> json) => _$AuthorizedKeyFromJson(json);

@override final  String? publicKey;
@override final  String? encryptedSecretKey;

/// Create a copy of AuthorizedKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorizedKeyCopyWith<_AuthorizedKey> get copyWith => __$AuthorizedKeyCopyWithImpl<_AuthorizedKey>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthorizedKeyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorizedKey&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.encryptedSecretKey, encryptedSecretKey) || other.encryptedSecretKey == encryptedSecretKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,publicKey,encryptedSecretKey);

@override
String toString() {
  return 'AuthorizedKey(publicKey: $publicKey, encryptedSecretKey: $encryptedSecretKey)';
}


}

/// @nodoc
abstract mixin class _$AuthorizedKeyCopyWith<$Res> implements $AuthorizedKeyCopyWith<$Res> {
  factory _$AuthorizedKeyCopyWith(_AuthorizedKey value, $Res Function(_AuthorizedKey) _then) = __$AuthorizedKeyCopyWithImpl;
@override @useResult
$Res call({
 String? publicKey, String? encryptedSecretKey
});




}
/// @nodoc
class __$AuthorizedKeyCopyWithImpl<$Res>
    implements _$AuthorizedKeyCopyWith<$Res> {
  __$AuthorizedKeyCopyWithImpl(this._self, this._then);

  final _AuthorizedKey _self;
  final $Res Function(_AuthorizedKey) _then;

/// Create a copy of AuthorizedKey
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? publicKey = freezed,Object? encryptedSecretKey = freezed,}) {
  return _then(_AuthorizedKey(
publicKey: freezed == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as String?,encryptedSecretKey: freezed == encryptedSecretKey ? _self.encryptedSecretKey : encryptedSecretKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
