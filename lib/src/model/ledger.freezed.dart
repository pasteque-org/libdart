// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Ledger {

 TokenLedger? get token; UCOLedger? get uco;
/// Create a copy of Ledger
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LedgerCopyWith<Ledger> get copyWith => _$LedgerCopyWithImpl<Ledger>(this as Ledger, _$identity);

  /// Serializes this Ledger to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ledger&&(identical(other.token, token) || other.token == token)&&(identical(other.uco, uco) || other.uco == uco));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,uco);

@override
String toString() {
  return 'Ledger(token: $token, uco: $uco)';
}


}

/// @nodoc
abstract mixin class $LedgerCopyWith<$Res>  {
  factory $LedgerCopyWith(Ledger value, $Res Function(Ledger) _then) = _$LedgerCopyWithImpl;
@useResult
$Res call({
 TokenLedger? token, UCOLedger? uco
});


$TokenLedgerCopyWith<$Res>? get token;$UCOLedgerCopyWith<$Res>? get uco;

}
/// @nodoc
class _$LedgerCopyWithImpl<$Res>
    implements $LedgerCopyWith<$Res> {
  _$LedgerCopyWithImpl(this._self, this._then);

  final Ledger _self;
  final $Res Function(Ledger) _then;

/// Create a copy of Ledger
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = freezed,Object? uco = freezed,}) {
  return _then(_self.copyWith(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as TokenLedger?,uco: freezed == uco ? _self.uco : uco // ignore: cast_nullable_to_non_nullable
as UCOLedger?,
  ));
}
/// Create a copy of Ledger
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenLedgerCopyWith<$Res>? get token {
    if (_self.token == null) {
    return null;
  }

  return $TokenLedgerCopyWith<$Res>(_self.token!, (value) {
    return _then(_self.copyWith(token: value));
  });
}/// Create a copy of Ledger
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UCOLedgerCopyWith<$Res>? get uco {
    if (_self.uco == null) {
    return null;
  }

  return $UCOLedgerCopyWith<$Res>(_self.uco!, (value) {
    return _then(_self.copyWith(uco: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Ledger extends Ledger {
  const _Ledger({this.token, this.uco}): super._();
  factory _Ledger.fromJson(Map<String, dynamic> json) => _$LedgerFromJson(json);

@override final  TokenLedger? token;
@override final  UCOLedger? uco;

/// Create a copy of Ledger
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LedgerCopyWith<_Ledger> get copyWith => __$LedgerCopyWithImpl<_Ledger>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LedgerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ledger&&(identical(other.token, token) || other.token == token)&&(identical(other.uco, uco) || other.uco == uco));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,uco);

@override
String toString() {
  return 'Ledger(token: $token, uco: $uco)';
}


}

/// @nodoc
abstract mixin class _$LedgerCopyWith<$Res> implements $LedgerCopyWith<$Res> {
  factory _$LedgerCopyWith(_Ledger value, $Res Function(_Ledger) _then) = __$LedgerCopyWithImpl;
@override @useResult
$Res call({
 TokenLedger? token, UCOLedger? uco
});


@override $TokenLedgerCopyWith<$Res>? get token;@override $UCOLedgerCopyWith<$Res>? get uco;

}
/// @nodoc
class __$LedgerCopyWithImpl<$Res>
    implements _$LedgerCopyWith<$Res> {
  __$LedgerCopyWithImpl(this._self, this._then);

  final _Ledger _self;
  final $Res Function(_Ledger) _then;

/// Create a copy of Ledger
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = freezed,Object? uco = freezed,}) {
  return _then(_Ledger(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as TokenLedger?,uco: freezed == uco ? _self.uco : uco // ignore: cast_nullable_to_non_nullable
as UCOLedger?,
  ));
}

/// Create a copy of Ledger
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenLedgerCopyWith<$Res>? get token {
    if (_self.token == null) {
    return null;
  }

  return $TokenLedgerCopyWith<$Res>(_self.token!, (value) {
    return _then(_self.copyWith(token: value));
  });
}/// Create a copy of Ledger
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UCOLedgerCopyWith<$Res>? get uco {
    if (_self.uco == null) {
    return null;
  }

  return $UCOLedgerCopyWith<$Res>(_self.uco!, (value) {
    return _then(_self.copyWith(uco: value));
  });
}
}

// dart format on
