// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_secrets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SharedSecrets {

/// The storage nonce public key. This public key is used to encrypt data
/// specifically for a node (or other designated party), enabling them to decrypt it.
/// This is often relevant for operations like setting authorized keys for smart contracts.
/// Can be null if this information is not available or not set.
 String? get storageNoncePublicKey;
/// Create a copy of SharedSecrets
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SharedSecretsCopyWith<SharedSecrets> get copyWith => _$SharedSecretsCopyWithImpl<SharedSecrets>(this as SharedSecrets, _$identity);

  /// Serializes this SharedSecrets to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SharedSecrets&&(identical(other.storageNoncePublicKey, storageNoncePublicKey) || other.storageNoncePublicKey == storageNoncePublicKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storageNoncePublicKey);

@override
String toString() {
  return 'SharedSecrets(storageNoncePublicKey: $storageNoncePublicKey)';
}


}

/// @nodoc
abstract mixin class $SharedSecretsCopyWith<$Res>  {
  factory $SharedSecretsCopyWith(SharedSecrets value, $Res Function(SharedSecrets) _then) = _$SharedSecretsCopyWithImpl;
@useResult
$Res call({
 String? storageNoncePublicKey
});




}
/// @nodoc
class _$SharedSecretsCopyWithImpl<$Res>
    implements $SharedSecretsCopyWith<$Res> {
  _$SharedSecretsCopyWithImpl(this._self, this._then);

  final SharedSecrets _self;
  final $Res Function(SharedSecrets) _then;

/// Create a copy of SharedSecrets
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storageNoncePublicKey = freezed,}) {
  return _then(_self.copyWith(
storageNoncePublicKey: freezed == storageNoncePublicKey ? _self.storageNoncePublicKey : storageNoncePublicKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SharedSecrets extends SharedSecrets {
  const _SharedSecrets({this.storageNoncePublicKey}): super._();
  factory _SharedSecrets.fromJson(Map<String, dynamic> json) => _$SharedSecretsFromJson(json);

/// The storage nonce public key. This public key is used to encrypt data
/// specifically for a node (or other designated party), enabling them to decrypt it.
/// This is often relevant for operations like setting authorized keys for smart contracts.
/// Can be null if this information is not available or not set.
@override final  String? storageNoncePublicKey;

/// Create a copy of SharedSecrets
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SharedSecretsCopyWith<_SharedSecrets> get copyWith => __$SharedSecretsCopyWithImpl<_SharedSecrets>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SharedSecretsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SharedSecrets&&(identical(other.storageNoncePublicKey, storageNoncePublicKey) || other.storageNoncePublicKey == storageNoncePublicKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storageNoncePublicKey);

@override
String toString() {
  return 'SharedSecrets(storageNoncePublicKey: $storageNoncePublicKey)';
}


}

/// @nodoc
abstract mixin class _$SharedSecretsCopyWith<$Res> implements $SharedSecretsCopyWith<$Res> {
  factory _$SharedSecretsCopyWith(_SharedSecrets value, $Res Function(_SharedSecrets) _then) = __$SharedSecretsCopyWithImpl;
@override @useResult
$Res call({
 String? storageNoncePublicKey
});




}
/// @nodoc
class __$SharedSecretsCopyWithImpl<$Res>
    implements _$SharedSecretsCopyWith<$Res> {
  __$SharedSecretsCopyWithImpl(this._self, this._then);

  final _SharedSecrets _self;
  final $Res Function(_SharedSecrets) _then;

/// Create a copy of SharedSecrets
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storageNoncePublicKey = freezed,}) {
  return _then(_SharedSecrets(
storageNoncePublicKey: freezed == storageNoncePublicKey ? _self.storageNoncePublicKey : storageNoncePublicKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
