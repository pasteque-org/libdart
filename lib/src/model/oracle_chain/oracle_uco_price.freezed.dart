// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oracle_uco_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OracleUcoPrice {

 Uco? get uco; int? get timestamp;
/// Create a copy of OracleUcoPrice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OracleUcoPriceCopyWith<OracleUcoPrice> get copyWith => _$OracleUcoPriceCopyWithImpl<OracleUcoPrice>(this as OracleUcoPrice, _$identity);

  /// Serializes this OracleUcoPrice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OracleUcoPrice&&(identical(other.uco, uco) || other.uco == uco)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uco,timestamp);

@override
String toString() {
  return 'OracleUcoPrice(uco: $uco, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $OracleUcoPriceCopyWith<$Res>  {
  factory $OracleUcoPriceCopyWith(OracleUcoPrice value, $Res Function(OracleUcoPrice) _then) = _$OracleUcoPriceCopyWithImpl;
@useResult
$Res call({
 Uco? uco, int? timestamp
});


$UcoCopyWith<$Res>? get uco;

}
/// @nodoc
class _$OracleUcoPriceCopyWithImpl<$Res>
    implements $OracleUcoPriceCopyWith<$Res> {
  _$OracleUcoPriceCopyWithImpl(this._self, this._then);

  final OracleUcoPrice _self;
  final $Res Function(OracleUcoPrice) _then;

/// Create a copy of OracleUcoPrice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uco = freezed,Object? timestamp = freezed,}) {
  return _then(_self.copyWith(
uco: freezed == uco ? _self.uco : uco // ignore: cast_nullable_to_non_nullable
as Uco?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of OracleUcoPrice
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UcoCopyWith<$Res>? get uco {
    if (_self.uco == null) {
    return null;
  }

  return $UcoCopyWith<$Res>(_self.uco!, (value) {
    return _then(_self.copyWith(uco: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _OracleUcoPrice extends OracleUcoPrice {
  const _OracleUcoPrice({this.uco, this.timestamp}): super._();
  factory _OracleUcoPrice.fromJson(Map<String, dynamic> json) => _$OracleUcoPriceFromJson(json);

@override final  Uco? uco;
@override final  int? timestamp;

/// Create a copy of OracleUcoPrice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OracleUcoPriceCopyWith<_OracleUcoPrice> get copyWith => __$OracleUcoPriceCopyWithImpl<_OracleUcoPrice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OracleUcoPriceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OracleUcoPrice&&(identical(other.uco, uco) || other.uco == uco)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uco,timestamp);

@override
String toString() {
  return 'OracleUcoPrice(uco: $uco, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$OracleUcoPriceCopyWith<$Res> implements $OracleUcoPriceCopyWith<$Res> {
  factory _$OracleUcoPriceCopyWith(_OracleUcoPrice value, $Res Function(_OracleUcoPrice) _then) = __$OracleUcoPriceCopyWithImpl;
@override @useResult
$Res call({
 Uco? uco, int? timestamp
});


@override $UcoCopyWith<$Res>? get uco;

}
/// @nodoc
class __$OracleUcoPriceCopyWithImpl<$Res>
    implements _$OracleUcoPriceCopyWith<$Res> {
  __$OracleUcoPriceCopyWithImpl(this._self, this._then);

  final _OracleUcoPrice _self;
  final $Res Function(_OracleUcoPrice) _then;

/// Create a copy of OracleUcoPrice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uco = freezed,Object? timestamp = freezed,}) {
  return _then(_OracleUcoPrice(
uco: freezed == uco ? _self.uco : uco // ignore: cast_nullable_to_non_nullable
as Uco?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of OracleUcoPrice
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UcoCopyWith<$Res>? get uco {
    if (_self.uco == null) {
    return null;
  }

  return $UcoCopyWith<$Res>(_self.uco!, (value) {
    return _then(_self.copyWith(uco: value));
  });
}
}

// dart format on
