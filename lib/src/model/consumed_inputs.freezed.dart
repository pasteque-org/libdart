// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consumed_inputs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConsumedInputs {

/// The amount of the asset being consumed. Applicable for UCO or token inputs.
 int? get amount;/// The transaction hash from which this input originates.
 String? get from;/// The address of the token, if the input is a token.
 String? get tokenAddress;/// The timestamp indicating when the Unspent Transaction Output (UTXO) was created or last manipulated.
 int? get timestamp;/// The type of the input. Common types include 'UCO', 'token', 'state', or 'call'.
 String? get type;/// The unique identifier for a token, allocated when the token is minted. Applicable for token inputs.
 int? get tokenId;/// The version of the UTXO data structure.
 int? get protocolVersion;/// The state of a smart contract, if the input involves a smart contract state.
 String? get state;
/// Create a copy of ConsumedInputs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConsumedInputsCopyWith<ConsumedInputs> get copyWith => _$ConsumedInputsCopyWithImpl<ConsumedInputs>(this as ConsumedInputs, _$identity);

  /// Serializes this ConsumedInputs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConsumedInputs&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.from, from) || other.from == from)&&(identical(other.tokenAddress, tokenAddress) || other.tokenAddress == tokenAddress)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.type, type) || other.type == type)&&(identical(other.tokenId, tokenId) || other.tokenId == tokenId)&&(identical(other.protocolVersion, protocolVersion) || other.protocolVersion == protocolVersion)&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,from,tokenAddress,timestamp,type,tokenId,protocolVersion,state);

@override
String toString() {
  return 'ConsumedInputs(amount: $amount, from: $from, tokenAddress: $tokenAddress, timestamp: $timestamp, type: $type, tokenId: $tokenId, protocolVersion: $protocolVersion, state: $state)';
}


}

/// @nodoc
abstract mixin class $ConsumedInputsCopyWith<$Res>  {
  factory $ConsumedInputsCopyWith(ConsumedInputs value, $Res Function(ConsumedInputs) _then) = _$ConsumedInputsCopyWithImpl;
@useResult
$Res call({
 int? amount, String? from, String? tokenAddress, int? timestamp, String? type, int? tokenId, int? protocolVersion, String? state
});




}
/// @nodoc
class _$ConsumedInputsCopyWithImpl<$Res>
    implements $ConsumedInputsCopyWith<$Res> {
  _$ConsumedInputsCopyWithImpl(this._self, this._then);

  final ConsumedInputs _self;
  final $Res Function(ConsumedInputs) _then;

/// Create a copy of ConsumedInputs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = freezed,Object? from = freezed,Object? tokenAddress = freezed,Object? timestamp = freezed,Object? type = freezed,Object? tokenId = freezed,Object? protocolVersion = freezed,Object? state = freezed,}) {
  return _then(_self.copyWith(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,tokenAddress: freezed == tokenAddress ? _self.tokenAddress : tokenAddress // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,tokenId: freezed == tokenId ? _self.tokenId : tokenId // ignore: cast_nullable_to_non_nullable
as int?,protocolVersion: freezed == protocolVersion ? _self.protocolVersion : protocolVersion // ignore: cast_nullable_to_non_nullable
as int?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ConsumedInputs extends ConsumedInputs {
  const _ConsumedInputs({this.amount, this.from, this.tokenAddress, this.timestamp, this.type, this.tokenId, this.protocolVersion, this.state}): super._();
  factory _ConsumedInputs.fromJson(Map<String, dynamic> json) => _$ConsumedInputsFromJson(json);

/// The amount of the asset being consumed. Applicable for UCO or token inputs.
@override final  int? amount;
/// The transaction hash from which this input originates.
@override final  String? from;
/// The address of the token, if the input is a token.
@override final  String? tokenAddress;
/// The timestamp indicating when the Unspent Transaction Output (UTXO) was created or last manipulated.
@override final  int? timestamp;
/// The type of the input. Common types include 'UCO', 'token', 'state', or 'call'.
@override final  String? type;
/// The unique identifier for a token, allocated when the token is minted. Applicable for token inputs.
@override final  int? tokenId;
/// The version of the UTXO data structure.
@override final  int? protocolVersion;
/// The state of a smart contract, if the input involves a smart contract state.
@override final  String? state;

/// Create a copy of ConsumedInputs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConsumedInputsCopyWith<_ConsumedInputs> get copyWith => __$ConsumedInputsCopyWithImpl<_ConsumedInputs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConsumedInputsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConsumedInputs&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.from, from) || other.from == from)&&(identical(other.tokenAddress, tokenAddress) || other.tokenAddress == tokenAddress)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.type, type) || other.type == type)&&(identical(other.tokenId, tokenId) || other.tokenId == tokenId)&&(identical(other.protocolVersion, protocolVersion) || other.protocolVersion == protocolVersion)&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,from,tokenAddress,timestamp,type,tokenId,protocolVersion,state);

@override
String toString() {
  return 'ConsumedInputs(amount: $amount, from: $from, tokenAddress: $tokenAddress, timestamp: $timestamp, type: $type, tokenId: $tokenId, protocolVersion: $protocolVersion, state: $state)';
}


}

/// @nodoc
abstract mixin class _$ConsumedInputsCopyWith<$Res> implements $ConsumedInputsCopyWith<$Res> {
  factory _$ConsumedInputsCopyWith(_ConsumedInputs value, $Res Function(_ConsumedInputs) _then) = __$ConsumedInputsCopyWithImpl;
@override @useResult
$Res call({
 int? amount, String? from, String? tokenAddress, int? timestamp, String? type, int? tokenId, int? protocolVersion, String? state
});




}
/// @nodoc
class __$ConsumedInputsCopyWithImpl<$Res>
    implements _$ConsumedInputsCopyWith<$Res> {
  __$ConsumedInputsCopyWithImpl(this._self, this._then);

  final _ConsumedInputs _self;
  final $Res Function(_ConsumedInputs) _then;

/// Create a copy of ConsumedInputs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = freezed,Object? from = freezed,Object? tokenAddress = freezed,Object? timestamp = freezed,Object? type = freezed,Object? tokenId = freezed,Object? protocolVersion = freezed,Object? state = freezed,}) {
  return _then(_ConsumedInputs(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,tokenAddress: freezed == tokenAddress ? _self.tokenAddress : tokenAddress // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,tokenId: freezed == tokenId ? _self.tokenId : tokenId // ignore: cast_nullable_to_non_nullable
as int?,protocolVersion: freezed == protocolVersion ? _self.protocolVersion : protocolVersion // ignore: cast_nullable_to_non_nullable
as int?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
