// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Balance {

/// Token balances for various tokens.
 List<TokenBalance> get token;/// UCO (Universal Coin) balance.
 int get uco;
/// Create a copy of Balance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BalanceCopyWith<Balance> get copyWith => _$BalanceCopyWithImpl<Balance>(this as Balance, _$identity);

  /// Serializes this Balance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Balance&&const DeepCollectionEquality().equals(other.token, token)&&(identical(other.uco, uco) || other.uco == uco));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(token),uco);

@override
String toString() {
  return 'Balance(token: $token, uco: $uco)';
}


}

/// @nodoc
abstract mixin class $BalanceCopyWith<$Res>  {
  factory $BalanceCopyWith(Balance value, $Res Function(Balance) _then) = _$BalanceCopyWithImpl;
@useResult
$Res call({
 List<TokenBalance> token, int uco
});




}
/// @nodoc
class _$BalanceCopyWithImpl<$Res>
    implements $BalanceCopyWith<$Res> {
  _$BalanceCopyWithImpl(this._self, this._then);

  final Balance _self;
  final $Res Function(Balance) _then;

/// Create a copy of Balance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? uco = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as List<TokenBalance>,uco: null == uco ? _self.uco : uco // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Balance extends Balance {
  const _Balance({final  List<TokenBalance> token = const [], this.uco = 0}): _token = token,super._();
  factory _Balance.fromJson(Map<String, dynamic> json) => _$BalanceFromJson(json);

/// Token balances for various tokens.
 final  List<TokenBalance> _token;
/// Token balances for various tokens.
@override@JsonKey() List<TokenBalance> get token {
  if (_token is EqualUnmodifiableListView) return _token;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_token);
}

/// UCO (Universal Coin) balance.
@override@JsonKey() final  int uco;

/// Create a copy of Balance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalanceCopyWith<_Balance> get copyWith => __$BalanceCopyWithImpl<_Balance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BalanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Balance&&const DeepCollectionEquality().equals(other._token, _token)&&(identical(other.uco, uco) || other.uco == uco));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_token),uco);

@override
String toString() {
  return 'Balance(token: $token, uco: $uco)';
}


}

/// @nodoc
abstract mixin class _$BalanceCopyWith<$Res> implements $BalanceCopyWith<$Res> {
  factory _$BalanceCopyWith(_Balance value, $Res Function(_Balance) _then) = __$BalanceCopyWithImpl;
@override @useResult
$Res call({
 List<TokenBalance> token, int uco
});




}
/// @nodoc
class __$BalanceCopyWithImpl<$Res>
    implements _$BalanceCopyWith<$Res> {
  __$BalanceCopyWithImpl(this._self, this._then);

  final _Balance _self;
  final $Res Function(_Balance) _then;

/// Create a copy of Balance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? uco = null,}) {
  return _then(_Balance(
token: null == token ? _self._token : token // ignore: cast_nullable_to_non_nullable
as List<TokenBalance>,uco: null == uco ? _self.uco : uco // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
