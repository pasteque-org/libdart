// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_movement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionMovement {

/// Asset amount
 int? get amount;/// Address of the token if the type is token
 String? get tokenAddress;/// Asset transfer recipient
 String? get to;/// Type of the asset: UCO/Token
 String? get type;/// Id for a token which is allocated when the token is minted.
 int? get tokenId;
/// Create a copy of TransactionMovement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionMovementCopyWith<TransactionMovement> get copyWith => _$TransactionMovementCopyWithImpl<TransactionMovement>(this as TransactionMovement, _$identity);

  /// Serializes this TransactionMovement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionMovement&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.tokenAddress, tokenAddress) || other.tokenAddress == tokenAddress)&&(identical(other.to, to) || other.to == to)&&(identical(other.type, type) || other.type == type)&&(identical(other.tokenId, tokenId) || other.tokenId == tokenId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,tokenAddress,to,type,tokenId);

@override
String toString() {
  return 'TransactionMovement(amount: $amount, tokenAddress: $tokenAddress, to: $to, type: $type, tokenId: $tokenId)';
}


}

/// @nodoc
abstract mixin class $TransactionMovementCopyWith<$Res>  {
  factory $TransactionMovementCopyWith(TransactionMovement value, $Res Function(TransactionMovement) _then) = _$TransactionMovementCopyWithImpl;
@useResult
$Res call({
 int? amount, String? tokenAddress, String? to, String? type, int? tokenId
});




}
/// @nodoc
class _$TransactionMovementCopyWithImpl<$Res>
    implements $TransactionMovementCopyWith<$Res> {
  _$TransactionMovementCopyWithImpl(this._self, this._then);

  final TransactionMovement _self;
  final $Res Function(TransactionMovement) _then;

/// Create a copy of TransactionMovement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = freezed,Object? tokenAddress = freezed,Object? to = freezed,Object? type = freezed,Object? tokenId = freezed,}) {
  return _then(_self.copyWith(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,tokenAddress: freezed == tokenAddress ? _self.tokenAddress : tokenAddress // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,tokenId: freezed == tokenId ? _self.tokenId : tokenId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TransactionMovement extends TransactionMovement {
  const _TransactionMovement({this.amount, this.tokenAddress, this.to, this.type, this.tokenId}): super._();
  factory _TransactionMovement.fromJson(Map<String, dynamic> json) => _$TransactionMovementFromJson(json);

/// Asset amount
@override final  int? amount;
/// Address of the token if the type is token
@override final  String? tokenAddress;
/// Asset transfer recipient
@override final  String? to;
/// Type of the asset: UCO/Token
@override final  String? type;
/// Id for a token which is allocated when the token is minted.
@override final  int? tokenId;

/// Create a copy of TransactionMovement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionMovementCopyWith<_TransactionMovement> get copyWith => __$TransactionMovementCopyWithImpl<_TransactionMovement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionMovementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionMovement&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.tokenAddress, tokenAddress) || other.tokenAddress == tokenAddress)&&(identical(other.to, to) || other.to == to)&&(identical(other.type, type) || other.type == type)&&(identical(other.tokenId, tokenId) || other.tokenId == tokenId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,tokenAddress,to,type,tokenId);

@override
String toString() {
  return 'TransactionMovement(amount: $amount, tokenAddress: $tokenAddress, to: $to, type: $type, tokenId: $tokenId)';
}


}

/// @nodoc
abstract mixin class _$TransactionMovementCopyWith<$Res> implements $TransactionMovementCopyWith<$Res> {
  factory _$TransactionMovementCopyWith(_TransactionMovement value, $Res Function(_TransactionMovement) _then) = __$TransactionMovementCopyWithImpl;
@override @useResult
$Res call({
 int? amount, String? tokenAddress, String? to, String? type, int? tokenId
});




}
/// @nodoc
class __$TransactionMovementCopyWithImpl<$Res>
    implements _$TransactionMovementCopyWith<$Res> {
  __$TransactionMovementCopyWithImpl(this._self, this._then);

  final _TransactionMovement _self;
  final $Res Function(_TransactionMovement) _then;

/// Create a copy of TransactionMovement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = freezed,Object? tokenAddress = freezed,Object? to = freezed,Object? type = freezed,Object? tokenId = freezed,}) {
  return _then(_TransactionMovement(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,tokenAddress: freezed == tokenAddress ? _self.tokenAddress : tokenAddress // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,tokenId: freezed == tokenId ? _self.tokenId : tokenId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
