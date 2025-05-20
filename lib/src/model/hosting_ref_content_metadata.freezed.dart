// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hosting_ref_content_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HostingRefContentMetaData {

/// The hash of the content, used for integrity verification.
 String get hash;/// The size of the content in bytes.
 int get size;/// The encoding of the content (e.g., 'utf-8', 'gzip').
 String get encoding;/// A list of addresses (e.g., transaction hashes or storage node identifiers) where the content is stored or can be retrieved from.
 List<String> get addresses;
/// Create a copy of HostingRefContentMetaData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HostingRefContentMetaDataCopyWith<HostingRefContentMetaData> get copyWith => _$HostingRefContentMetaDataCopyWithImpl<HostingRefContentMetaData>(this as HostingRefContentMetaData, _$identity);

  /// Serializes this HostingRefContentMetaData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HostingRefContentMetaData&&(identical(other.hash, hash) || other.hash == hash)&&(identical(other.size, size) || other.size == size)&&(identical(other.encoding, encoding) || other.encoding == encoding)&&const DeepCollectionEquality().equals(other.addresses, addresses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hash,size,encoding,const DeepCollectionEquality().hash(addresses));

@override
String toString() {
  return 'HostingRefContentMetaData(hash: $hash, size: $size, encoding: $encoding, addresses: $addresses)';
}


}

/// @nodoc
abstract mixin class $HostingRefContentMetaDataCopyWith<$Res>  {
  factory $HostingRefContentMetaDataCopyWith(HostingRefContentMetaData value, $Res Function(HostingRefContentMetaData) _then) = _$HostingRefContentMetaDataCopyWithImpl;
@useResult
$Res call({
 String hash, int size, String encoding, List<String> addresses
});




}
/// @nodoc
class _$HostingRefContentMetaDataCopyWithImpl<$Res>
    implements $HostingRefContentMetaDataCopyWith<$Res> {
  _$HostingRefContentMetaDataCopyWithImpl(this._self, this._then);

  final HostingRefContentMetaData _self;
  final $Res Function(HostingRefContentMetaData) _then;

/// Create a copy of HostingRefContentMetaData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hash = null,Object? size = null,Object? encoding = null,Object? addresses = null,}) {
  return _then(_self.copyWith(
hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,encoding: null == encoding ? _self.encoding : encoding // ignore: cast_nullable_to_non_nullable
as String,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _HostingRefContentMetaData extends HostingRefContentMetaData {
  const _HostingRefContentMetaData({this.hash = '', this.size = 0, this.encoding = '', final  List<String> addresses = const []}): _addresses = addresses,super._();
  factory _HostingRefContentMetaData.fromJson(Map<String, dynamic> json) => _$HostingRefContentMetaDataFromJson(json);

/// The hash of the content, used for integrity verification.
@override@JsonKey() final  String hash;
/// The size of the content in bytes.
@override@JsonKey() final  int size;
/// The encoding of the content (e.g., 'utf-8', 'gzip').
@override@JsonKey() final  String encoding;
/// A list of addresses (e.g., transaction hashes or storage node identifiers) where the content is stored or can be retrieved from.
 final  List<String> _addresses;
/// A list of addresses (e.g., transaction hashes or storage node identifiers) where the content is stored or can be retrieved from.
@override@JsonKey() List<String> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}


/// Create a copy of HostingRefContentMetaData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HostingRefContentMetaDataCopyWith<_HostingRefContentMetaData> get copyWith => __$HostingRefContentMetaDataCopyWithImpl<_HostingRefContentMetaData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HostingRefContentMetaDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HostingRefContentMetaData&&(identical(other.hash, hash) || other.hash == hash)&&(identical(other.size, size) || other.size == size)&&(identical(other.encoding, encoding) || other.encoding == encoding)&&const DeepCollectionEquality().equals(other._addresses, _addresses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hash,size,encoding,const DeepCollectionEquality().hash(_addresses));

@override
String toString() {
  return 'HostingRefContentMetaData(hash: $hash, size: $size, encoding: $encoding, addresses: $addresses)';
}


}

/// @nodoc
abstract mixin class _$HostingRefContentMetaDataCopyWith<$Res> implements $HostingRefContentMetaDataCopyWith<$Res> {
  factory _$HostingRefContentMetaDataCopyWith(_HostingRefContentMetaData value, $Res Function(_HostingRefContentMetaData) _then) = __$HostingRefContentMetaDataCopyWithImpl;
@override @useResult
$Res call({
 String hash, int size, String encoding, List<String> addresses
});




}
/// @nodoc
class __$HostingRefContentMetaDataCopyWithImpl<$Res>
    implements _$HostingRefContentMetaDataCopyWith<$Res> {
  __$HostingRefContentMetaDataCopyWithImpl(this._self, this._then);

  final _HostingRefContentMetaData _self;
  final $Res Function(_HostingRefContentMetaData) _then;

/// Create a copy of HostingRefContentMetaData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hash = null,Object? size = null,Object? encoding = null,Object? addresses = null,}) {
  return _then(_HostingRefContentMetaData(
hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,encoding: null == encoding ? _self.encoding : encoding // ignore: cast_nullable_to_non_nullable
as String,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
