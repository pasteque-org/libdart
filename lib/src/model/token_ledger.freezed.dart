// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_ledger.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokenLedger {

/// A list of token transfers to be executed. Each [TokenTransfer] specifies
/// the details of an individual asset movement (e.g., amount, recipient, token address).
/// Defaults to an empty list if no transfers are specified.
 List<TokenTransfer> get transfers;
/// Create a copy of TokenLedger
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenLedgerCopyWith<TokenLedger> get copyWith => _$TokenLedgerCopyWithImpl<TokenLedger>(this as TokenLedger, _$identity);

  /// Serializes this TokenLedger to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenLedger&&const DeepCollectionEquality().equals(other.transfers, transfers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(transfers));

@override
String toString() {
  return 'TokenLedger(transfers: $transfers)';
}


}

/// @nodoc
abstract mixin class $TokenLedgerCopyWith<$Res>  {
  factory $TokenLedgerCopyWith(TokenLedger value, $Res Function(TokenLedger) _then) = _$TokenLedgerCopyWithImpl;
@useResult
$Res call({
 List<TokenTransfer> transfers
});




}
/// @nodoc
class _$TokenLedgerCopyWithImpl<$Res>
    implements $TokenLedgerCopyWith<$Res> {
  _$TokenLedgerCopyWithImpl(this._self, this._then);

  final TokenLedger _self;
  final $Res Function(TokenLedger) _then;

/// Create a copy of TokenLedger
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transfers = null,}) {
  return _then(_self.copyWith(
transfers: null == transfers ? _self.transfers : transfers // ignore: cast_nullable_to_non_nullable
as List<TokenTransfer>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TokenLedger extends TokenLedger {
  const _TokenLedger({final  List<TokenTransfer> transfers = const []}): _transfers = transfers,super._();
  factory _TokenLedger.fromJson(Map<String, dynamic> json) => _$TokenLedgerFromJson(json);

/// A list of token transfers to be executed. Each [TokenTransfer] specifies
/// the details of an individual asset movement (e.g., amount, recipient, token address).
/// Defaults to an empty list if no transfers are specified.
 final  List<TokenTransfer> _transfers;
/// A list of token transfers to be executed. Each [TokenTransfer] specifies
/// the details of an individual asset movement (e.g., amount, recipient, token address).
/// Defaults to an empty list if no transfers are specified.
@override@JsonKey() List<TokenTransfer> get transfers {
  if (_transfers is EqualUnmodifiableListView) return _transfers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transfers);
}


/// Create a copy of TokenLedger
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenLedgerCopyWith<_TokenLedger> get copyWith => __$TokenLedgerCopyWithImpl<_TokenLedger>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenLedgerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenLedger&&const DeepCollectionEquality().equals(other._transfers, _transfers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transfers));

@override
String toString() {
  return 'TokenLedger(transfers: $transfers)';
}


}

/// @nodoc
abstract mixin class _$TokenLedgerCopyWith<$Res> implements $TokenLedgerCopyWith<$Res> {
  factory _$TokenLedgerCopyWith(_TokenLedger value, $Res Function(_TokenLedger) _then) = __$TokenLedgerCopyWithImpl;
@override @useResult
$Res call({
 List<TokenTransfer> transfers
});




}
/// @nodoc
class __$TokenLedgerCopyWithImpl<$Res>
    implements _$TokenLedgerCopyWith<$Res> {
  __$TokenLedgerCopyWithImpl(this._self, this._then);

  final _TokenLedger _self;
  final $Res Function(_TokenLedger) _then;

/// Create a copy of TokenLedger
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transfers = null,}) {
  return _then(_TokenLedger(
transfers: null == transfers ? _self._transfers : transfers // ignore: cast_nullable_to_non_nullable
as List<TokenTransfer>,
  ));
}


}

// dart format on
