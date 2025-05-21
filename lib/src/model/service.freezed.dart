// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Service {

/// The derivation path used to generate or identify the key for this service.
/// This follows a standard hierarchical deterministic wallet path format.
 String get derivationPath;/// The cryptographic curve used for key generation and operations (e.g., 'ed25519', 'secp256k1').
/// Defaults to 'ed25519'.
 String get curve;/// The hash algorithm used in conjunction with this service (e.g., 'sha256', 'keccak256').
/// Defaults to 'sha256'.
 String get hashAlgo;
/// Create a copy of Service
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceCopyWith<Service> get copyWith => _$ServiceCopyWithImpl<Service>(this as Service, _$identity);

  /// Serializes this Service to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Service&&(identical(other.derivationPath, derivationPath) || other.derivationPath == derivationPath)&&(identical(other.curve, curve) || other.curve == curve)&&(identical(other.hashAlgo, hashAlgo) || other.hashAlgo == hashAlgo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,derivationPath,curve,hashAlgo);

@override
String toString() {
  return 'Service(derivationPath: $derivationPath, curve: $curve, hashAlgo: $hashAlgo)';
}


}

/// @nodoc
abstract mixin class $ServiceCopyWith<$Res>  {
  factory $ServiceCopyWith(Service value, $Res Function(Service) _then) = _$ServiceCopyWithImpl;
@useResult
$Res call({
 String derivationPath, String curve, String hashAlgo
});




}
/// @nodoc
class _$ServiceCopyWithImpl<$Res>
    implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._self, this._then);

  final Service _self;
  final $Res Function(Service) _then;

/// Create a copy of Service
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? derivationPath = null,Object? curve = null,Object? hashAlgo = null,}) {
  return _then(_self.copyWith(
derivationPath: null == derivationPath ? _self.derivationPath : derivationPath // ignore: cast_nullable_to_non_nullable
as String,curve: null == curve ? _self.curve : curve // ignore: cast_nullable_to_non_nullable
as String,hashAlgo: null == hashAlgo ? _self.hashAlgo : hashAlgo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Service extends Service {
  const _Service({required this.derivationPath, this.curve = 'ed25519', this.hashAlgo = 'sha256'}): super._();
  factory _Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);

/// The derivation path used to generate or identify the key for this service.
/// This follows a standard hierarchical deterministic wallet path format.
@override final  String derivationPath;
/// The cryptographic curve used for key generation and operations (e.g., 'ed25519', 'secp256k1').
/// Defaults to 'ed25519'.
@override@JsonKey() final  String curve;
/// The hash algorithm used in conjunction with this service (e.g., 'sha256', 'keccak256').
/// Defaults to 'sha256'.
@override@JsonKey() final  String hashAlgo;

/// Create a copy of Service
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceCopyWith<_Service> get copyWith => __$ServiceCopyWithImpl<_Service>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Service&&(identical(other.derivationPath, derivationPath) || other.derivationPath == derivationPath)&&(identical(other.curve, curve) || other.curve == curve)&&(identical(other.hashAlgo, hashAlgo) || other.hashAlgo == hashAlgo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,derivationPath,curve,hashAlgo);

@override
String toString() {
  return 'Service(derivationPath: $derivationPath, curve: $curve, hashAlgo: $hashAlgo)';
}


}

/// @nodoc
abstract mixin class _$ServiceCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$ServiceCopyWith(_Service value, $Res Function(_Service) _then) = __$ServiceCopyWithImpl;
@override @useResult
$Res call({
 String derivationPath, String curve, String hashAlgo
});




}
/// @nodoc
class __$ServiceCopyWithImpl<$Res>
    implements _$ServiceCopyWith<$Res> {
  __$ServiceCopyWithImpl(this._self, this._then);

  final _Service _self;
  final $Res Function(_Service) _then;

/// Create a copy of Service
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? derivationPath = null,Object? curve = null,Object? hashAlgo = null,}) {
  return _then(_Service(
derivationPath: null == derivationPath ? _self.derivationPath : derivationPath // ignore: cast_nullable_to_non_nullable
as String,curve: null == curve ? _self.curve : curve // ignore: cast_nullable_to_non_nullable
as String,hashAlgo: null == hashAlgo ? _self.hashAlgo : hashAlgo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
