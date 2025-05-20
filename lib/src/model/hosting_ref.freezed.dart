// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hosting_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HostingRef {

/// The version of the AEWeb specification being used.
 int get aewebVersion;/// The hash function used to verify the integrity of the hosted content (e.g., 'sha1', 'sha256').
 String get hashFunction;/// Metadata for different content paths. The keys are typically file paths or identifiers,
/// and the values are [HostingRefContentMetaData] objects.
 Map<String, HostingRefContentMetaData> get metaData;/// The SSL certificate associated with the hosted content, if applicable.
 String get sslCertificate;
/// Create a copy of HostingRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HostingRefCopyWith<HostingRef> get copyWith => _$HostingRefCopyWithImpl<HostingRef>(this as HostingRef, _$identity);

  /// Serializes this HostingRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HostingRef&&(identical(other.aewebVersion, aewebVersion) || other.aewebVersion == aewebVersion)&&(identical(other.hashFunction, hashFunction) || other.hashFunction == hashFunction)&&const DeepCollectionEquality().equals(other.metaData, metaData)&&(identical(other.sslCertificate, sslCertificate) || other.sslCertificate == sslCertificate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,aewebVersion,hashFunction,const DeepCollectionEquality().hash(metaData),sslCertificate);

@override
String toString() {
  return 'HostingRef(aewebVersion: $aewebVersion, hashFunction: $hashFunction, metaData: $metaData, sslCertificate: $sslCertificate)';
}


}

/// @nodoc
abstract mixin class $HostingRefCopyWith<$Res>  {
  factory $HostingRefCopyWith(HostingRef value, $Res Function(HostingRef) _then) = _$HostingRefCopyWithImpl;
@useResult
$Res call({
 int aewebVersion, String hashFunction, Map<String, HostingRefContentMetaData> metaData, String sslCertificate
});




}
/// @nodoc
class _$HostingRefCopyWithImpl<$Res>
    implements $HostingRefCopyWith<$Res> {
  _$HostingRefCopyWithImpl(this._self, this._then);

  final HostingRef _self;
  final $Res Function(HostingRef) _then;

/// Create a copy of HostingRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? aewebVersion = null,Object? hashFunction = null,Object? metaData = null,Object? sslCertificate = null,}) {
  return _then(_self.copyWith(
aewebVersion: null == aewebVersion ? _self.aewebVersion : aewebVersion // ignore: cast_nullable_to_non_nullable
as int,hashFunction: null == hashFunction ? _self.hashFunction : hashFunction // ignore: cast_nullable_to_non_nullable
as String,metaData: null == metaData ? _self.metaData : metaData // ignore: cast_nullable_to_non_nullable
as Map<String, HostingRefContentMetaData>,sslCertificate: null == sslCertificate ? _self.sslCertificate : sslCertificate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _HostingRef extends HostingRef {
  const _HostingRef({this.aewebVersion = 1, this.hashFunction = 'sha1', final  Map<String, HostingRefContentMetaData> metaData = const {}, this.sslCertificate = ''}): _metaData = metaData,super._();
  factory _HostingRef.fromJson(Map<String, dynamic> json) => _$HostingRefFromJson(json);

/// The version of the AEWeb specification being used.
@override@JsonKey() final  int aewebVersion;
/// The hash function used to verify the integrity of the hosted content (e.g., 'sha1', 'sha256').
@override@JsonKey() final  String hashFunction;
/// Metadata for different content paths. The keys are typically file paths or identifiers,
/// and the values are [HostingRefContentMetaData] objects.
 final  Map<String, HostingRefContentMetaData> _metaData;
/// Metadata for different content paths. The keys are typically file paths or identifiers,
/// and the values are [HostingRefContentMetaData] objects.
@override@JsonKey() Map<String, HostingRefContentMetaData> get metaData {
  if (_metaData is EqualUnmodifiableMapView) return _metaData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metaData);
}

/// The SSL certificate associated with the hosted content, if applicable.
@override@JsonKey() final  String sslCertificate;

/// Create a copy of HostingRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HostingRefCopyWith<_HostingRef> get copyWith => __$HostingRefCopyWithImpl<_HostingRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HostingRefToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HostingRef&&(identical(other.aewebVersion, aewebVersion) || other.aewebVersion == aewebVersion)&&(identical(other.hashFunction, hashFunction) || other.hashFunction == hashFunction)&&const DeepCollectionEquality().equals(other._metaData, _metaData)&&(identical(other.sslCertificate, sslCertificate) || other.sslCertificate == sslCertificate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,aewebVersion,hashFunction,const DeepCollectionEquality().hash(_metaData),sslCertificate);

@override
String toString() {
  return 'HostingRef(aewebVersion: $aewebVersion, hashFunction: $hashFunction, metaData: $metaData, sslCertificate: $sslCertificate)';
}


}

/// @nodoc
abstract mixin class _$HostingRefCopyWith<$Res> implements $HostingRefCopyWith<$Res> {
  factory _$HostingRefCopyWith(_HostingRef value, $Res Function(_HostingRef) _then) = __$HostingRefCopyWithImpl;
@override @useResult
$Res call({
 int aewebVersion, String hashFunction, Map<String, HostingRefContentMetaData> metaData, String sslCertificate
});




}
/// @nodoc
class __$HostingRefCopyWithImpl<$Res>
    implements _$HostingRefCopyWith<$Res> {
  __$HostingRefCopyWithImpl(this._self, this._then);

  final _HostingRef _self;
  final $Res Function(_HostingRef) _then;

/// Create a copy of HostingRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? aewebVersion = null,Object? hashFunction = null,Object? metaData = null,Object? sslCertificate = null,}) {
  return _then(_HostingRef(
aewebVersion: null == aewebVersion ? _self.aewebVersion : aewebVersion // ignore: cast_nullable_to_non_nullable
as int,hashFunction: null == hashFunction ? _self.hashFunction : hashFunction // ignore: cast_nullable_to_non_nullable
as String,metaData: null == metaData ? _self._metaData : metaData // ignore: cast_nullable_to_non_nullable
as Map<String, HostingRefContentMetaData>,sslCertificate: null == sslCertificate ? _self.sslCertificate : sslCertificate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
