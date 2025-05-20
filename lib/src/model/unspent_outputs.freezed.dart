// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unspent_outputs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UnspentOutputs {

/// Asset amount
 int? get amount;/// Address of the token if the type is token
 String? get tokenAddress;/// Type of the token: UCO/Token
 String? get type;/// Transaction which send the amount of assets
 String? get from;/// Id for a token which is allocated when the token is minted.
 int? get tokenId;/// Date time when the UTXO created/manipulated
 int? get timestamp;/// State of a smart contract
 Map<String, dynamic>? get state;
/// Create a copy of UnspentOutputs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnspentOutputsCopyWith<UnspentOutputs> get copyWith => _$UnspentOutputsCopyWithImpl<UnspentOutputs>(this as UnspentOutputs, _$identity);

  /// Serializes this UnspentOutputs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnspentOutputs&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.tokenAddress, tokenAddress) || other.tokenAddress == tokenAddress)&&(identical(other.type, type) || other.type == type)&&(identical(other.from, from) || other.from == from)&&(identical(other.tokenId, tokenId) || other.tokenId == tokenId)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other.state, state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,tokenAddress,type,from,tokenId,timestamp,const DeepCollectionEquality().hash(state));

@override
String toString() {
  return 'UnspentOutputs(amount: $amount, tokenAddress: $tokenAddress, type: $type, from: $from, tokenId: $tokenId, timestamp: $timestamp, state: $state)';
}


}

/// @nodoc
abstract mixin class $UnspentOutputsCopyWith<$Res>  {
  factory $UnspentOutputsCopyWith(UnspentOutputs value, $Res Function(UnspentOutputs) _then) = _$UnspentOutputsCopyWithImpl;
@useResult
$Res call({
 int? amount, String? tokenAddress, String? type, String? from, int? tokenId, int? timestamp, Map<String, dynamic>? state
});




}
/// @nodoc
class _$UnspentOutputsCopyWithImpl<$Res>
    implements $UnspentOutputsCopyWith<$Res> {
  _$UnspentOutputsCopyWithImpl(this._self, this._then);

  final UnspentOutputs _self;
  final $Res Function(UnspentOutputs) _then;

/// Create a copy of UnspentOutputs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = freezed,Object? tokenAddress = freezed,Object? type = freezed,Object? from = freezed,Object? tokenId = freezed,Object? timestamp = freezed,Object? state = freezed,}) {
  return _then(_self.copyWith(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,tokenAddress: freezed == tokenAddress ? _self.tokenAddress : tokenAddress // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,tokenId: freezed == tokenId ? _self.tokenId : tokenId // ignore: cast_nullable_to_non_nullable
as int?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UnspentOutputs extends UnspentOutputs {
  const _UnspentOutputs({this.amount, this.tokenAddress, this.type, this.from, this.tokenId, this.timestamp, final  Map<String, dynamic>? state}): _state = state,super._();
  factory _UnspentOutputs.fromJson(Map<String, dynamic> json) => _$UnspentOutputsFromJson(json);

/// Asset amount
@override final  int? amount;
/// Address of the token if the type is token
@override final  String? tokenAddress;
/// Type of the token: UCO/Token
@override final  String? type;
/// Transaction which send the amount of assets
@override final  String? from;
/// Id for a token which is allocated when the token is minted.
@override final  int? tokenId;
/// Date time when the UTXO created/manipulated
@override final  int? timestamp;
/// State of a smart contract
 final  Map<String, dynamic>? _state;
/// State of a smart contract
@override Map<String, dynamic>? get state {
  final value = _state;
  if (value == null) return null;
  if (_state is EqualUnmodifiableMapView) return _state;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of UnspentOutputs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnspentOutputsCopyWith<_UnspentOutputs> get copyWith => __$UnspentOutputsCopyWithImpl<_UnspentOutputs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnspentOutputsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnspentOutputs&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.tokenAddress, tokenAddress) || other.tokenAddress == tokenAddress)&&(identical(other.type, type) || other.type == type)&&(identical(other.from, from) || other.from == from)&&(identical(other.tokenId, tokenId) || other.tokenId == tokenId)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other._state, _state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,tokenAddress,type,from,tokenId,timestamp,const DeepCollectionEquality().hash(_state));

@override
String toString() {
  return 'UnspentOutputs(amount: $amount, tokenAddress: $tokenAddress, type: $type, from: $from, tokenId: $tokenId, timestamp: $timestamp, state: $state)';
}


}

/// @nodoc
abstract mixin class _$UnspentOutputsCopyWith<$Res> implements $UnspentOutputsCopyWith<$Res> {
  factory _$UnspentOutputsCopyWith(_UnspentOutputs value, $Res Function(_UnspentOutputs) _then) = __$UnspentOutputsCopyWithImpl;
@override @useResult
$Res call({
 int? amount, String? tokenAddress, String? type, String? from, int? tokenId, int? timestamp, Map<String, dynamic>? state
});




}
/// @nodoc
class __$UnspentOutputsCopyWithImpl<$Res>
    implements _$UnspentOutputsCopyWith<$Res> {
  __$UnspentOutputsCopyWithImpl(this._self, this._then);

  final _UnspentOutputs _self;
  final $Res Function(_UnspentOutputs) _then;

/// Create a copy of UnspentOutputs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = freezed,Object? tokenAddress = freezed,Object? type = freezed,Object? from = freezed,Object? tokenId = freezed,Object? timestamp = freezed,Object? state = freezed,}) {
  return _then(_UnspentOutputs(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,tokenAddress: freezed == tokenAddress ? _self.tokenAddress : tokenAddress // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,tokenId: freezed == tokenId ? _self.tokenId : tokenId // ignore: cast_nullable_to_non_nullable
as int?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,state: freezed == state ? _self._state : state // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
