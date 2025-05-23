// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokenBalance {

/// Address of the token
 String? get address;/// Amount of token
 int? get amount;/// ID of the token
 int? get tokenId;
/// Create a copy of TokenBalance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenBalanceCopyWith<TokenBalance> get copyWith => _$TokenBalanceCopyWithImpl<TokenBalance>(this as TokenBalance, _$identity);

  /// Serializes this TokenBalance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenBalance&&(identical(other.address, address) || other.address == address)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.tokenId, tokenId) || other.tokenId == tokenId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,amount,tokenId);

@override
String toString() {
  return 'TokenBalance(address: $address, amount: $amount, tokenId: $tokenId)';
}


}

/// @nodoc
abstract mixin class $TokenBalanceCopyWith<$Res>  {
  factory $TokenBalanceCopyWith(TokenBalance value, $Res Function(TokenBalance) _then) = _$TokenBalanceCopyWithImpl;
@useResult
$Res call({
 String? address, int? amount, int? tokenId
});




}
/// @nodoc
class _$TokenBalanceCopyWithImpl<$Res>
    implements $TokenBalanceCopyWith<$Res> {
  _$TokenBalanceCopyWithImpl(this._self, this._then);

  final TokenBalance _self;
  final $Res Function(TokenBalance) _then;

/// Create a copy of TokenBalance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = freezed,Object? amount = freezed,Object? tokenId = freezed,}) {
  return _then(_self.copyWith(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,tokenId: freezed == tokenId ? _self.tokenId : tokenId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TokenBalance extends TokenBalance {
  const _TokenBalance({this.address, this.amount, this.tokenId}): super._();
  factory _TokenBalance.fromJson(Map<String, dynamic> json) => _$TokenBalanceFromJson(json);

/// Address of the token
@override final  String? address;
/// Amount of token
@override final  int? amount;
/// ID of the token
@override final  int? tokenId;

/// Create a copy of TokenBalance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenBalanceCopyWith<_TokenBalance> get copyWith => __$TokenBalanceCopyWithImpl<_TokenBalance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenBalanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenBalance&&(identical(other.address, address) || other.address == address)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.tokenId, tokenId) || other.tokenId == tokenId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,amount,tokenId);

@override
String toString() {
  return 'TokenBalance(address: $address, amount: $amount, tokenId: $tokenId)';
}


}

/// @nodoc
abstract mixin class _$TokenBalanceCopyWith<$Res> implements $TokenBalanceCopyWith<$Res> {
  factory _$TokenBalanceCopyWith(_TokenBalance value, $Res Function(_TokenBalance) _then) = __$TokenBalanceCopyWithImpl;
@override @useResult
$Res call({
 String? address, int? amount, int? tokenId
});




}
/// @nodoc
class __$TokenBalanceCopyWithImpl<$Res>
    implements _$TokenBalanceCopyWith<$Res> {
  __$TokenBalanceCopyWithImpl(this._self, this._then);

  final _TokenBalance _self;
  final $Res Function(_TokenBalance) _then;

/// Create a copy of TokenBalance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = freezed,Object? amount = freezed,Object? tokenId = freezed,}) {
  return _then(_TokenBalance(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,tokenId: freezed == tokenId ? _self.tokenId : tokenId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
