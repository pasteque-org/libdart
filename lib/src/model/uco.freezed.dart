// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uco.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Uco {

 double? get eur; double? get usd;
/// Create a copy of Uco
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UcoCopyWith<Uco> get copyWith => _$UcoCopyWithImpl<Uco>(this as Uco, _$identity);

  /// Serializes this Uco to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Uco&&(identical(other.eur, eur) || other.eur == eur)&&(identical(other.usd, usd) || other.usd == usd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eur,usd);

@override
String toString() {
  return 'Uco(eur: $eur, usd: $usd)';
}


}

/// @nodoc
abstract mixin class $UcoCopyWith<$Res>  {
  factory $UcoCopyWith(Uco value, $Res Function(Uco) _then) = _$UcoCopyWithImpl;
@useResult
$Res call({
 double? eur, double? usd
});




}
/// @nodoc
class _$UcoCopyWithImpl<$Res>
    implements $UcoCopyWith<$Res> {
  _$UcoCopyWithImpl(this._self, this._then);

  final Uco _self;
  final $Res Function(Uco) _then;

/// Create a copy of Uco
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eur = freezed,Object? usd = freezed,}) {
  return _then(_self.copyWith(
eur: freezed == eur ? _self.eur : eur // ignore: cast_nullable_to_non_nullable
as double?,usd: freezed == usd ? _self.usd : usd // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Uco extends Uco {
  const _Uco({this.eur, this.usd}): super._();
  factory _Uco.fromJson(Map<String, dynamic> json) => _$UcoFromJson(json);

@override final  double? eur;
@override final  double? usd;

/// Create a copy of Uco
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UcoCopyWith<_Uco> get copyWith => __$UcoCopyWithImpl<_Uco>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UcoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Uco&&(identical(other.eur, eur) || other.eur == eur)&&(identical(other.usd, usd) || other.usd == usd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eur,usd);

@override
String toString() {
  return 'Uco(eur: $eur, usd: $usd)';
}


}

/// @nodoc
abstract mixin class _$UcoCopyWith<$Res> implements $UcoCopyWith<$Res> {
  factory _$UcoCopyWith(_Uco value, $Res Function(_Uco) _then) = __$UcoCopyWithImpl;
@override @useResult
$Res call({
 double? eur, double? usd
});




}
/// @nodoc
class __$UcoCopyWithImpl<$Res>
    implements _$UcoCopyWith<$Res> {
  __$UcoCopyWithImpl(this._self, this._then);

  final _Uco _self;
  final $Res Function(_Uco) _then;

/// Create a copy of Uco
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eur = freezed,Object? usd = freezed,}) {
  return _then(_Uco(
eur: freezed == eur ? _self.eur : eur // ignore: cast_nullable_to_non_nullable
as double?,usd: freezed == usd ? _self.usd : usd // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
