// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Data {

/// Hexadecimal representation of smart contract code.
 String? get code;/// Detailed information about a smart contract, if applicable.
 Contract? get contract;/// A free-form field for data hosting, which can be a string or hexadecimal data.
 String? get content;/// A list of [Ownership] objects, defining authorizations or delegations.
/// These contain secrets and authorized public keys to prove ownership.
/// Defaults to an empty list.
 List<Ownership> get ownerships;/// Ledger operations, such as asset transfers.
 Ledger? get ledger;/// A list of [Recipient] objects for non-asset transfer transactions.
/// This is typically used for smart contract interactions to specify who the transaction is directed towards.
/// Defaults to an empty list.
 List<Recipient> get recipients;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.code, code) || other.code == code)&&(identical(other.contract, contract) || other.contract == contract)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.ownerships, ownerships)&&(identical(other.ledger, ledger) || other.ledger == ledger)&&const DeepCollectionEquality().equals(other.recipients, recipients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,contract,content,const DeepCollectionEquality().hash(ownerships),ledger,const DeepCollectionEquality().hash(recipients));

@override
String toString() {
  return 'Data(code: $code, contract: $contract, content: $content, ownerships: $ownerships, ledger: $ledger, recipients: $recipients)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
 String? code, Contract? contract, String? content, List<Ownership> ownerships, Ledger? ledger, List<Recipient> recipients
});


$ContractCopyWith<$Res>? get contract;$LedgerCopyWith<$Res>? get ledger;

}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? contract = freezed,Object? content = freezed,Object? ownerships = null,Object? ledger = freezed,Object? recipients = null,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,contract: freezed == contract ? _self.contract : contract // ignore: cast_nullable_to_non_nullable
as Contract?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,ownerships: null == ownerships ? _self.ownerships : ownerships // ignore: cast_nullable_to_non_nullable
as List<Ownership>,ledger: freezed == ledger ? _self.ledger : ledger // ignore: cast_nullable_to_non_nullable
as Ledger?,recipients: null == recipients ? _self.recipients : recipients // ignore: cast_nullable_to_non_nullable
as List<Recipient>,
  ));
}
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContractCopyWith<$Res>? get contract {
    if (_self.contract == null) {
    return null;
  }

  return $ContractCopyWith<$Res>(_self.contract!, (value) {
    return _then(_self.copyWith(contract: value));
  });
}/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerCopyWith<$Res>? get ledger {
    if (_self.ledger == null) {
    return null;
  }

  return $LedgerCopyWith<$Res>(_self.ledger!, (value) {
    return _then(_self.copyWith(ledger: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Data extends Data {
  const _Data({this.code, this.contract, this.content, this.ownerships = const [], this.ledger, this.recipients = const []}): super._();
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

/// Hexadecimal representation of smart contract code.
@override final  String? code;
/// Detailed information about a smart contract, if applicable.
@override final  Contract? contract;
/// A free-form field for data hosting, which can be a string or hexadecimal data.
@override final  String? content;
/// A list of [Ownership] objects, defining authorizations or delegations.
/// These contain secrets and authorized public keys to prove ownership.
/// Defaults to an empty list.
@override@JsonKey() final  List<Ownership> ownerships;
/// Ledger operations, such as asset transfers.
@override final  Ledger? ledger;
/// A list of [Recipient] objects for non-asset transfer transactions.
/// This is typically used for smart contract interactions to specify who the transaction is directed towards.
/// Defaults to an empty list.
@override@JsonKey() final  List<Recipient> recipients;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.code, code) || other.code == code)&&(identical(other.contract, contract) || other.contract == contract)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.ownerships, ownerships)&&(identical(other.ledger, ledger) || other.ledger == ledger)&&const DeepCollectionEquality().equals(other.recipients, recipients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,contract,content,const DeepCollectionEquality().hash(ownerships),ledger,const DeepCollectionEquality().hash(recipients));

@override
String toString() {
  return 'Data(code: $code, contract: $contract, content: $content, ownerships: $ownerships, ledger: $ledger, recipients: $recipients)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
 String? code, Contract? contract, String? content, List<Ownership> ownerships, Ledger? ledger, List<Recipient> recipients
});


@override $ContractCopyWith<$Res>? get contract;@override $LedgerCopyWith<$Res>? get ledger;

}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? contract = freezed,Object? content = freezed,Object? ownerships = null,Object? ledger = freezed,Object? recipients = null,}) {
  return _then(_Data(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,contract: freezed == contract ? _self.contract : contract // ignore: cast_nullable_to_non_nullable
as Contract?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,ownerships: null == ownerships ? _self.ownerships : ownerships // ignore: cast_nullable_to_non_nullable
as List<Ownership>,ledger: freezed == ledger ? _self.ledger : ledger // ignore: cast_nullable_to_non_nullable
as Ledger?,recipients: null == recipients ? _self.recipients : recipients // ignore: cast_nullable_to_non_nullable
as List<Recipient>,
  ));
}

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContractCopyWith<$Res>? get contract {
    if (_self.contract == null) {
    return null;
  }

  return $ContractCopyWith<$Res>(_self.contract!, (value) {
    return _then(_self.copyWith(contract: value));
  });
}/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerCopyWith<$Res>? get ledger {
    if (_self.ledger == null) {
    return null;
  }

  return $LedgerCopyWith<$Res>(_self.ledger!, (value) {
    return _then(_self.copyWith(ledger: value));
  });
}
}

// dart format on
