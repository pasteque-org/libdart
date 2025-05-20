// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blockchain_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlockchainVersionModel {

/// The detailed blockchain version information.
 BlockchainVersion get version;
/// Create a copy of BlockchainVersionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlockchainVersionModelCopyWith<BlockchainVersionModel> get copyWith => _$BlockchainVersionModelCopyWithImpl<BlockchainVersionModel>(this as BlockchainVersionModel, _$identity);

  /// Serializes this BlockchainVersionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlockchainVersionModel&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version);

@override
String toString() {
  return 'BlockchainVersionModel(version: $version)';
}


}

/// @nodoc
abstract mixin class $BlockchainVersionModelCopyWith<$Res>  {
  factory $BlockchainVersionModelCopyWith(BlockchainVersionModel value, $Res Function(BlockchainVersionModel) _then) = _$BlockchainVersionModelCopyWithImpl;
@useResult
$Res call({
 BlockchainVersion version
});


$BlockchainVersionCopyWith<$Res> get version;

}
/// @nodoc
class _$BlockchainVersionModelCopyWithImpl<$Res>
    implements $BlockchainVersionModelCopyWith<$Res> {
  _$BlockchainVersionModelCopyWithImpl(this._self, this._then);

  final BlockchainVersionModel _self;
  final $Res Function(BlockchainVersionModel) _then;

/// Create a copy of BlockchainVersionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as BlockchainVersion,
  ));
}
/// Create a copy of BlockchainVersionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BlockchainVersionCopyWith<$Res> get version {
  
  return $BlockchainVersionCopyWith<$Res>(_self.version, (value) {
    return _then(_self.copyWith(version: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _BlockchainVersionModel implements BlockchainVersionModel {
  const _BlockchainVersionModel({required this.version});
  factory _BlockchainVersionModel.fromJson(Map<String, dynamic> json) => _$BlockchainVersionModelFromJson(json);

/// The detailed blockchain version information.
@override final  BlockchainVersion version;

/// Create a copy of BlockchainVersionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlockchainVersionModelCopyWith<_BlockchainVersionModel> get copyWith => __$BlockchainVersionModelCopyWithImpl<_BlockchainVersionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlockchainVersionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlockchainVersionModel&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version);

@override
String toString() {
  return 'BlockchainVersionModel(version: $version)';
}


}

/// @nodoc
abstract mixin class _$BlockchainVersionModelCopyWith<$Res> implements $BlockchainVersionModelCopyWith<$Res> {
  factory _$BlockchainVersionModelCopyWith(_BlockchainVersionModel value, $Res Function(_BlockchainVersionModel) _then) = __$BlockchainVersionModelCopyWithImpl;
@override @useResult
$Res call({
 BlockchainVersion version
});


@override $BlockchainVersionCopyWith<$Res> get version;

}
/// @nodoc
class __$BlockchainVersionModelCopyWithImpl<$Res>
    implements _$BlockchainVersionModelCopyWith<$Res> {
  __$BlockchainVersionModelCopyWithImpl(this._self, this._then);

  final _BlockchainVersionModel _self;
  final $Res Function(_BlockchainVersionModel) _then;

/// Create a copy of BlockchainVersionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,}) {
  return _then(_BlockchainVersionModel(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as BlockchainVersion,
  ));
}

/// Create a copy of BlockchainVersionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BlockchainVersionCopyWith<$Res> get version {
  
  return $BlockchainVersionCopyWith<$Res>(_self.version, (value) {
    return _then(_self.copyWith(version: value));
  });
}
}


/// @nodoc
mixin _$BlockchainVersion {

/// The version of the network protocol.
 String get protocol;/// The version of the transaction format.
 String get transaction;/// The version of the codebase.
 String? get code;
/// Create a copy of BlockchainVersion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlockchainVersionCopyWith<BlockchainVersion> get copyWith => _$BlockchainVersionCopyWithImpl<BlockchainVersion>(this as BlockchainVersion, _$identity);

  /// Serializes this BlockchainVersion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlockchainVersion&&(identical(other.protocol, protocol) || other.protocol == protocol)&&(identical(other.transaction, transaction) || other.transaction == transaction)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,protocol,transaction,code);

@override
String toString() {
  return 'BlockchainVersion(protocol: $protocol, transaction: $transaction, code: $code)';
}


}

/// @nodoc
abstract mixin class $BlockchainVersionCopyWith<$Res>  {
  factory $BlockchainVersionCopyWith(BlockchainVersion value, $Res Function(BlockchainVersion) _then) = _$BlockchainVersionCopyWithImpl;
@useResult
$Res call({
 String protocol, String transaction, String? code
});




}
/// @nodoc
class _$BlockchainVersionCopyWithImpl<$Res>
    implements $BlockchainVersionCopyWith<$Res> {
  _$BlockchainVersionCopyWithImpl(this._self, this._then);

  final BlockchainVersion _self;
  final $Res Function(BlockchainVersion) _then;

/// Create a copy of BlockchainVersion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? protocol = null,Object? transaction = null,Object? code = freezed,}) {
  return _then(_self.copyWith(
protocol: null == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as String,transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BlockchainVersion implements BlockchainVersion {
  const _BlockchainVersion({required this.protocol, required this.transaction, this.code});
  factory _BlockchainVersion.fromJson(Map<String, dynamic> json) => _$BlockchainVersionFromJson(json);

/// The version of the network protocol.
@override final  String protocol;
/// The version of the transaction format.
@override final  String transaction;
/// The version of the codebase.
@override final  String? code;

/// Create a copy of BlockchainVersion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlockchainVersionCopyWith<_BlockchainVersion> get copyWith => __$BlockchainVersionCopyWithImpl<_BlockchainVersion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlockchainVersionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlockchainVersion&&(identical(other.protocol, protocol) || other.protocol == protocol)&&(identical(other.transaction, transaction) || other.transaction == transaction)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,protocol,transaction,code);

@override
String toString() {
  return 'BlockchainVersion(protocol: $protocol, transaction: $transaction, code: $code)';
}


}

/// @nodoc
abstract mixin class _$BlockchainVersionCopyWith<$Res> implements $BlockchainVersionCopyWith<$Res> {
  factory _$BlockchainVersionCopyWith(_BlockchainVersion value, $Res Function(_BlockchainVersion) _then) = __$BlockchainVersionCopyWithImpl;
@override @useResult
$Res call({
 String protocol, String transaction, String? code
});




}
/// @nodoc
class __$BlockchainVersionCopyWithImpl<$Res>
    implements _$BlockchainVersionCopyWith<$Res> {
  __$BlockchainVersionCopyWithImpl(this._self, this._then);

  final _BlockchainVersion _self;
  final $Res Function(_BlockchainVersion) _then;

/// Create a copy of BlockchainVersion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? protocol = null,Object? transaction = null,Object? code = freezed,}) {
  return _then(_BlockchainVersion(
protocol: null == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as String,transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
