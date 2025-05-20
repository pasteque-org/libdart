// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokenTransfer {

 int? get amount; String? get to; String? get tokenAddress; int? get tokenId;
/// Create a copy of TokenTransfer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenTransferCopyWith<TokenTransfer> get copyWith => _$TokenTransferCopyWithImpl<TokenTransfer>(this as TokenTransfer, _$identity);

  /// Serializes this TokenTransfer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenTransfer&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.to, to) || other.to == to)&&(identical(other.tokenAddress, tokenAddress) || other.tokenAddress == tokenAddress)&&(identical(other.tokenId, tokenId) || other.tokenId == tokenId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,to,tokenAddress,tokenId);

@override
String toString() {
  return 'TokenTransfer(amount: $amount, to: $to, tokenAddress: $tokenAddress, tokenId: $tokenId)';
}


}

/// @nodoc
abstract mixin class $TokenTransferCopyWith<$Res>  {
  factory $TokenTransferCopyWith(TokenTransfer value, $Res Function(TokenTransfer) _then) = _$TokenTransferCopyWithImpl;
@useResult
$Res call({
 int? amount, String? to, String? tokenAddress, int? tokenId
});




}
/// @nodoc
class _$TokenTransferCopyWithImpl<$Res>
    implements $TokenTransferCopyWith<$Res> {
  _$TokenTransferCopyWithImpl(this._self, this._then);

  final TokenTransfer _self;
  final $Res Function(TokenTransfer) _then;

/// Create a copy of TokenTransfer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = freezed,Object? to = freezed,Object? tokenAddress = freezed,Object? tokenId = freezed,}) {
  return _then(_self.copyWith(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,tokenAddress: freezed == tokenAddress ? _self.tokenAddress : tokenAddress // ignore: cast_nullable_to_non_nullable
as String?,tokenId: freezed == tokenId ? _self.tokenId : tokenId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TokenTransfer extends TokenTransfer {
  const _TokenTransfer({this.amount, this.to, this.tokenAddress, this.tokenId}): super._();
  factory _TokenTransfer.fromJson(Map<String, dynamic> json) => _$TokenTransferFromJson(json);

@override final  int? amount;
@override final  String? to;
@override final  String? tokenAddress;
@override final  int? tokenId;

/// Create a copy of TokenTransfer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenTransferCopyWith<_TokenTransfer> get copyWith => __$TokenTransferCopyWithImpl<_TokenTransfer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenTransferToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenTransfer&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.to, to) || other.to == to)&&(identical(other.tokenAddress, tokenAddress) || other.tokenAddress == tokenAddress)&&(identical(other.tokenId, tokenId) || other.tokenId == tokenId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,to,tokenAddress,tokenId);

@override
String toString() {
  return 'TokenTransfer(amount: $amount, to: $to, tokenAddress: $tokenAddress, tokenId: $tokenId)';
}


}

/// @nodoc
abstract mixin class _$TokenTransferCopyWith<$Res> implements $TokenTransferCopyWith<$Res> {
  factory _$TokenTransferCopyWith(_TokenTransfer value, $Res Function(_TokenTransfer) _then) = __$TokenTransferCopyWithImpl;
@override @useResult
$Res call({
 int? amount, String? to, String? tokenAddress, int? tokenId
});




}
/// @nodoc
class __$TokenTransferCopyWithImpl<$Res>
    implements _$TokenTransferCopyWith<$Res> {
  __$TokenTransferCopyWithImpl(this._self, this._then);

  final _TokenTransfer _self;
  final $Res Function(_TokenTransfer) _then;

/// Create a copy of TokenTransfer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = freezed,Object? to = freezed,Object? tokenAddress = freezed,Object? tokenId = freezed,}) {
  return _then(_TokenTransfer(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,tokenAddress: freezed == tokenAddress ? _self.tokenAddress : tokenAddress // ignore: cast_nullable_to_non_nullable
as String?,tokenId: freezed == tokenId ? _self.tokenId : tokenId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
