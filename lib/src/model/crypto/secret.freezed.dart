// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secret.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Secret {

/// The Initialization Vector (IV) for AES encryption, stored as a [Uint8List].
@Uint8ListConverter() Uint8List? get iv;/// The AES symmetric key, stored as a [Uint8List].
@Uint8ListConverter() Uint8List? get aesKey;
/// Create a copy of Secret
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecretCopyWith<Secret> get copyWith => _$SecretCopyWithImpl<Secret>(this as Secret, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Secret&&const DeepCollectionEquality().equals(other.iv, iv)&&const DeepCollectionEquality().equals(other.aesKey, aesKey));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(iv),const DeepCollectionEquality().hash(aesKey));

@override
String toString() {
  return 'Secret(iv: $iv, aesKey: $aesKey)';
}


}

/// @nodoc
abstract mixin class $SecretCopyWith<$Res>  {
  factory $SecretCopyWith(Secret value, $Res Function(Secret) _then) = _$SecretCopyWithImpl;
@useResult
$Res call({
@Uint8ListConverter() Uint8List? iv,@Uint8ListConverter() Uint8List? aesKey
});




}
/// @nodoc
class _$SecretCopyWithImpl<$Res>
    implements $SecretCopyWith<$Res> {
  _$SecretCopyWithImpl(this._self, this._then);

  final Secret _self;
  final $Res Function(Secret) _then;

/// Create a copy of Secret
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? iv = freezed,Object? aesKey = freezed,}) {
  return _then(_self.copyWith(
iv: freezed == iv ? _self.iv : iv // ignore: cast_nullable_to_non_nullable
as Uint8List?,aesKey: freezed == aesKey ? _self.aesKey : aesKey // ignore: cast_nullable_to_non_nullable
as Uint8List?,
  ));
}

}


/// @nodoc


class _Secret implements Secret {
  const _Secret({@Uint8ListConverter() this.iv, @Uint8ListConverter() this.aesKey});
  

/// The Initialization Vector (IV) for AES encryption, stored as a [Uint8List].
@override@Uint8ListConverter() final  Uint8List? iv;
/// The AES symmetric key, stored as a [Uint8List].
@override@Uint8ListConverter() final  Uint8List? aesKey;

/// Create a copy of Secret
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecretCopyWith<_Secret> get copyWith => __$SecretCopyWithImpl<_Secret>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Secret&&const DeepCollectionEquality().equals(other.iv, iv)&&const DeepCollectionEquality().equals(other.aesKey, aesKey));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(iv),const DeepCollectionEquality().hash(aesKey));

@override
String toString() {
  return 'Secret(iv: $iv, aesKey: $aesKey)';
}


}

/// @nodoc
abstract mixin class _$SecretCopyWith<$Res> implements $SecretCopyWith<$Res> {
  factory _$SecretCopyWith(_Secret value, $Res Function(_Secret) _then) = __$SecretCopyWithImpl;
@override @useResult
$Res call({
@Uint8ListConverter() Uint8List? iv,@Uint8ListConverter() Uint8List? aesKey
});




}
/// @nodoc
class __$SecretCopyWithImpl<$Res>
    implements _$SecretCopyWith<$Res> {
  __$SecretCopyWithImpl(this._self, this._then);

  final _Secret _self;
  final $Res Function(_Secret) _then;

/// Create a copy of Secret
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? iv = freezed,Object? aesKey = freezed,}) {
  return _then(_Secret(
iv: freezed == iv ? _self.iv : iv // ignore: cast_nullable_to_non_nullable
as Uint8List?,aesKey: freezed == aesKey ? _self.aesKey : aesKey // ignore: cast_nullable_to_non_nullable
as Uint8List?,
  ));
}


}

// dart format on
