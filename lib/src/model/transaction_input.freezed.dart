// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionInput {

/// Asset amount
 int? get amount;/// Transaction which send the amount of assets
 String? get from;/// Address of the token if the type is token
 String? get tokenAddress;/// Determines if the input has been spent
 bool? get spent;/// Date time when the inputs was generated
 int? get timestamp;/// Type of the input: UCO/Token/Call
 String? get type;/// Id for a token which is allocated when the token is minted.
 int? get tokenId;
/// Create a copy of TransactionInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionInputCopyWith<TransactionInput> get copyWith => _$TransactionInputCopyWithImpl<TransactionInput>(this as TransactionInput, _$identity);

  /// Serializes this TransactionInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionInput&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.from, from) || other.from == from)&&(identical(other.tokenAddress, tokenAddress) || other.tokenAddress == tokenAddress)&&(identical(other.spent, spent) || other.spent == spent)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.type, type) || other.type == type)&&(identical(other.tokenId, tokenId) || other.tokenId == tokenId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,from,tokenAddress,spent,timestamp,type,tokenId);

@override
String toString() {
  return 'TransactionInput(amount: $amount, from: $from, tokenAddress: $tokenAddress, spent: $spent, timestamp: $timestamp, type: $type, tokenId: $tokenId)';
}


}

/// @nodoc
abstract mixin class $TransactionInputCopyWith<$Res>  {
  factory $TransactionInputCopyWith(TransactionInput value, $Res Function(TransactionInput) _then) = _$TransactionInputCopyWithImpl;
@useResult
$Res call({
 int? amount, String? from, String? tokenAddress, bool? spent, int? timestamp, String? type, int? tokenId
});




}
/// @nodoc
class _$TransactionInputCopyWithImpl<$Res>
    implements $TransactionInputCopyWith<$Res> {
  _$TransactionInputCopyWithImpl(this._self, this._then);

  final TransactionInput _self;
  final $Res Function(TransactionInput) _then;

/// Create a copy of TransactionInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = freezed,Object? from = freezed,Object? tokenAddress = freezed,Object? spent = freezed,Object? timestamp = freezed,Object? type = freezed,Object? tokenId = freezed,}) {
  return _then(_self.copyWith(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,tokenAddress: freezed == tokenAddress ? _self.tokenAddress : tokenAddress // ignore: cast_nullable_to_non_nullable
as String?,spent: freezed == spent ? _self.spent : spent // ignore: cast_nullable_to_non_nullable
as bool?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,tokenId: freezed == tokenId ? _self.tokenId : tokenId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TransactionInput extends TransactionInput {
  const _TransactionInput({this.amount, this.from, this.tokenAddress, this.spent, this.timestamp, this.type, this.tokenId}): super._();
  factory _TransactionInput.fromJson(Map<String, dynamic> json) => _$TransactionInputFromJson(json);

/// Asset amount
@override final  int? amount;
/// Transaction which send the amount of assets
@override final  String? from;
/// Address of the token if the type is token
@override final  String? tokenAddress;
/// Determines if the input has been spent
@override final  bool? spent;
/// Date time when the inputs was generated
@override final  int? timestamp;
/// Type of the input: UCO/Token/Call
@override final  String? type;
/// Id for a token which is allocated when the token is minted.
@override final  int? tokenId;

/// Create a copy of TransactionInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionInputCopyWith<_TransactionInput> get copyWith => __$TransactionInputCopyWithImpl<_TransactionInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionInput&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.from, from) || other.from == from)&&(identical(other.tokenAddress, tokenAddress) || other.tokenAddress == tokenAddress)&&(identical(other.spent, spent) || other.spent == spent)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.type, type) || other.type == type)&&(identical(other.tokenId, tokenId) || other.tokenId == tokenId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,from,tokenAddress,spent,timestamp,type,tokenId);

@override
String toString() {
  return 'TransactionInput(amount: $amount, from: $from, tokenAddress: $tokenAddress, spent: $spent, timestamp: $timestamp, type: $type, tokenId: $tokenId)';
}


}

/// @nodoc
abstract mixin class _$TransactionInputCopyWith<$Res> implements $TransactionInputCopyWith<$Res> {
  factory _$TransactionInputCopyWith(_TransactionInput value, $Res Function(_TransactionInput) _then) = __$TransactionInputCopyWithImpl;
@override @useResult
$Res call({
 int? amount, String? from, String? tokenAddress, bool? spent, int? timestamp, String? type, int? tokenId
});




}
/// @nodoc
class __$TransactionInputCopyWithImpl<$Res>
    implements _$TransactionInputCopyWith<$Res> {
  __$TransactionInputCopyWithImpl(this._self, this._then);

  final _TransactionInput _self;
  final $Res Function(_TransactionInput) _then;

/// Create a copy of TransactionInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = freezed,Object? from = freezed,Object? tokenAddress = freezed,Object? spent = freezed,Object? timestamp = freezed,Object? type = freezed,Object? tokenId = freezed,}) {
  return _then(_TransactionInput(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,tokenAddress: freezed == tokenAddress ? _self.tokenAddress : tokenAddress // ignore: cast_nullable_to_non_nullable
as String?,spent: freezed == spent ? _self.spent : spent // ignore: cast_nullable_to_non_nullable
as bool?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,tokenId: freezed == tokenId ? _self.tokenId : tokenId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
