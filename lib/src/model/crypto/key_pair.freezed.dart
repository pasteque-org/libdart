// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'key_pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KeyPair {

/// The private key, stored as a [Uint8List]. This should be kept secret.
@Uint8ListConverter() Uint8List? get privateKey;/// The public key, stored as a [Uint8List]. This can be shared openly.
@Uint8ListConverter() Uint8List? get publicKey;
/// Create a copy of KeyPair
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KeyPairCopyWith<KeyPair> get copyWith => _$KeyPairCopyWithImpl<KeyPair>(this as KeyPair, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KeyPair&&const DeepCollectionEquality().equals(other.privateKey, privateKey)&&const DeepCollectionEquality().equals(other.publicKey, publicKey));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(privateKey),const DeepCollectionEquality().hash(publicKey));

@override
String toString() {
  return 'KeyPair(privateKey: $privateKey, publicKey: $publicKey)';
}


}

/// @nodoc
abstract mixin class $KeyPairCopyWith<$Res>  {
  factory $KeyPairCopyWith(KeyPair value, $Res Function(KeyPair) _then) = _$KeyPairCopyWithImpl;
@useResult
$Res call({
@Uint8ListConverter() Uint8List? privateKey,@Uint8ListConverter() Uint8List? publicKey
});




}
/// @nodoc
class _$KeyPairCopyWithImpl<$Res>
    implements $KeyPairCopyWith<$Res> {
  _$KeyPairCopyWithImpl(this._self, this._then);

  final KeyPair _self;
  final $Res Function(KeyPair) _then;

/// Create a copy of KeyPair
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? privateKey = freezed,Object? publicKey = freezed,}) {
  return _then(_self.copyWith(
privateKey: freezed == privateKey ? _self.privateKey : privateKey // ignore: cast_nullable_to_non_nullable
as Uint8List?,publicKey: freezed == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as Uint8List?,
  ));
}

}


/// @nodoc


class _KeyPair extends KeyPair {
  const _KeyPair({@Uint8ListConverter() this.privateKey, @Uint8ListConverter() this.publicKey}): super._();
  

/// The private key, stored as a [Uint8List]. This should be kept secret.
@override@Uint8ListConverter() final  Uint8List? privateKey;
/// The public key, stored as a [Uint8List]. This can be shared openly.
@override@Uint8ListConverter() final  Uint8List? publicKey;

/// Create a copy of KeyPair
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KeyPairCopyWith<_KeyPair> get copyWith => __$KeyPairCopyWithImpl<_KeyPair>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KeyPair&&const DeepCollectionEquality().equals(other.privateKey, privateKey)&&const DeepCollectionEquality().equals(other.publicKey, publicKey));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(privateKey),const DeepCollectionEquality().hash(publicKey));

@override
String toString() {
  return 'KeyPair(privateKey: $privateKey, publicKey: $publicKey)';
}


}

/// @nodoc
abstract mixin class _$KeyPairCopyWith<$Res> implements $KeyPairCopyWith<$Res> {
  factory _$KeyPairCopyWith(_KeyPair value, $Res Function(_KeyPair) _then) = __$KeyPairCopyWithImpl;
@override @useResult
$Res call({
@Uint8ListConverter() Uint8List? privateKey,@Uint8ListConverter() Uint8List? publicKey
});




}
/// @nodoc
class __$KeyPairCopyWithImpl<$Res>
    implements _$KeyPairCopyWith<$Res> {
  __$KeyPairCopyWithImpl(this._self, this._then);

  final _KeyPair _self;
  final $Res Function(_KeyPair) _then;

/// Create a copy of KeyPair
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? privateKey = freezed,Object? publicKey = freezed,}) {
  return _then(_KeyPair(
privateKey: freezed == privateKey ? _self.privateKey : privateKey // ignore: cast_nullable_to_non_nullable
as Uint8List?,publicKey: freezed == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as Uint8List?,
  ));
}


}

// dart format on
