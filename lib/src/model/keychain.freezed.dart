// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keychain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Keychain {

/// The master seed for the keychain, used for all key derivations.
@Uint8ListConverter() Uint8List? get seed;/// The version of the keychain data structure.
 int get version;/// The set of named services managed by this keychain.
 Map<String, Service> get services;
/// Create a copy of Keychain
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KeychainCopyWith<Keychain> get copyWith => _$KeychainCopyWithImpl<Keychain>(this as Keychain, _$identity);

  /// Serializes this Keychain to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Keychain&&const DeepCollectionEquality().equals(other.seed, seed)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.services, services));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(seed),version,const DeepCollectionEquality().hash(services));

@override
String toString() {
  return 'Keychain(seed: $seed, version: $version, services: $services)';
}


}

/// @nodoc
abstract mixin class $KeychainCopyWith<$Res>  {
  factory $KeychainCopyWith(Keychain value, $Res Function(Keychain) _then) = _$KeychainCopyWithImpl;
@useResult
$Res call({
@Uint8ListConverter() Uint8List? seed, int version, Map<String, Service> services
});




}
/// @nodoc
class _$KeychainCopyWithImpl<$Res>
    implements $KeychainCopyWith<$Res> {
  _$KeychainCopyWithImpl(this._self, this._then);

  final Keychain _self;
  final $Res Function(Keychain) _then;

/// Create a copy of Keychain
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seed = freezed,Object? version = null,Object? services = null,}) {
  return _then(_self.copyWith(
seed: freezed == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as Uint8List?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as Map<String, Service>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Keychain extends Keychain {
  const _Keychain({@Uint8ListConverter() this.seed, this.version = kVersionKeychain, final  Map<String, Service> services = const {}}): _services = services,super._();
  factory _Keychain.fromJson(Map<String, dynamic> json) => _$KeychainFromJson(json);

/// The master seed for the keychain, used for all key derivations.
@override@Uint8ListConverter() final  Uint8List? seed;
/// The version of the keychain data structure.
@override@JsonKey() final  int version;
/// The set of named services managed by this keychain.
 final  Map<String, Service> _services;
/// The set of named services managed by this keychain.
@override@JsonKey() Map<String, Service> get services {
  if (_services is EqualUnmodifiableMapView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_services);
}


/// Create a copy of Keychain
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KeychainCopyWith<_Keychain> get copyWith => __$KeychainCopyWithImpl<_Keychain>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KeychainToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Keychain&&const DeepCollectionEquality().equals(other.seed, seed)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._services, _services));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(seed),version,const DeepCollectionEquality().hash(_services));

@override
String toString() {
  return 'Keychain(seed: $seed, version: $version, services: $services)';
}


}

/// @nodoc
abstract mixin class _$KeychainCopyWith<$Res> implements $KeychainCopyWith<$Res> {
  factory _$KeychainCopyWith(_Keychain value, $Res Function(_Keychain) _then) = __$KeychainCopyWithImpl;
@override @useResult
$Res call({
@Uint8ListConverter() Uint8List? seed, int version, Map<String, Service> services
});




}
/// @nodoc
class __$KeychainCopyWithImpl<$Res>
    implements _$KeychainCopyWith<$Res> {
  __$KeychainCopyWithImpl(this._self, this._then);

  final _Keychain _self;
  final $Res Function(_Keychain) _then;

/// Create a copy of Keychain
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? seed = freezed,Object? version = null,Object? services = null,}) {
  return _then(_Keychain(
seed: freezed == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as Uint8List?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as Map<String, Service>,
  ));
}


}

// dart format on
