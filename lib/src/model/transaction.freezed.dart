// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Transaction {

///  hash of the new generated public key for the given transaction
@AddressJsonConverter() Address? get address;/// [Balance] represents a ledger balance
 Balance? get balance;/// Length of the chain
 int? get chainLength;/// Cross validation stamps: endorsements of the validation stamp from the coordinator
 List<CrossValidationStamp> get crossValidationStamps;/// Transaction data zone (identity, keychain, smart contract, etc.)
 Data? get data;/// Represents the inputs from the transaction
 List<TransactionInput> get inputs;/// Signature from the device which originated the transaction (used in the Proof of work)
 String? get originSignature;/// Previous address
@AddressJsonConverter() Address? get previousAddress;/// Previous generated public key matching the previous signature
 String? get previousPublicKey;/// Signature from the previous public key
 String? get previousSignature;/// Transaction type
 String? get type;/// Coordinator work result
 ValidationStamp? get validationStamp;/// Version of the transaction (used for backward compatiblity)
 int get version;
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionCopyWith<Transaction> get copyWith => _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Transaction&&(identical(other.address, address) || other.address == address)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.chainLength, chainLength) || other.chainLength == chainLength)&&const DeepCollectionEquality().equals(other.crossValidationStamps, crossValidationStamps)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.inputs, inputs)&&(identical(other.originSignature, originSignature) || other.originSignature == originSignature)&&(identical(other.previousAddress, previousAddress) || other.previousAddress == previousAddress)&&(identical(other.previousPublicKey, previousPublicKey) || other.previousPublicKey == previousPublicKey)&&(identical(other.previousSignature, previousSignature) || other.previousSignature == previousSignature)&&(identical(other.type, type) || other.type == type)&&(identical(other.validationStamp, validationStamp) || other.validationStamp == validationStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,balance,chainLength,const DeepCollectionEquality().hash(crossValidationStamps),data,const DeepCollectionEquality().hash(inputs),originSignature,previousAddress,previousPublicKey,previousSignature,type,validationStamp,version);

@override
String toString() {
  return 'Transaction(address: $address, balance: $balance, chainLength: $chainLength, crossValidationStamps: $crossValidationStamps, data: $data, inputs: $inputs, originSignature: $originSignature, previousAddress: $previousAddress, previousPublicKey: $previousPublicKey, previousSignature: $previousSignature, type: $type, validationStamp: $validationStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res>  {
  factory $TransactionCopyWith(Transaction value, $Res Function(Transaction) _then) = _$TransactionCopyWithImpl;
@useResult
$Res call({
@AddressJsonConverter() Address? address, Balance? balance, int? chainLength, List<CrossValidationStamp> crossValidationStamps, Data? data, List<TransactionInput> inputs, String? originSignature,@AddressJsonConverter() Address? previousAddress, String? previousPublicKey, String? previousSignature, String? type, ValidationStamp? validationStamp, int version
});


$AddressCopyWith<$Res>? get address;$BalanceCopyWith<$Res>? get balance;$DataCopyWith<$Res>? get data;$AddressCopyWith<$Res>? get previousAddress;$ValidationStampCopyWith<$Res>? get validationStamp;

}
/// @nodoc
class _$TransactionCopyWithImpl<$Res>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = freezed,Object? balance = freezed,Object? chainLength = freezed,Object? crossValidationStamps = null,Object? data = freezed,Object? inputs = null,Object? originSignature = freezed,Object? previousAddress = freezed,Object? previousPublicKey = freezed,Object? previousSignature = freezed,Object? type = freezed,Object? validationStamp = freezed,Object? version = null,}) {
  return _then(_self.copyWith(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as Balance?,chainLength: freezed == chainLength ? _self.chainLength : chainLength // ignore: cast_nullable_to_non_nullable
as int?,crossValidationStamps: null == crossValidationStamps ? _self.crossValidationStamps : crossValidationStamps // ignore: cast_nullable_to_non_nullable
as List<CrossValidationStamp>,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,inputs: null == inputs ? _self.inputs : inputs // ignore: cast_nullable_to_non_nullable
as List<TransactionInput>,originSignature: freezed == originSignature ? _self.originSignature : originSignature // ignore: cast_nullable_to_non_nullable
as String?,previousAddress: freezed == previousAddress ? _self.previousAddress : previousAddress // ignore: cast_nullable_to_non_nullable
as Address?,previousPublicKey: freezed == previousPublicKey ? _self.previousPublicKey : previousPublicKey // ignore: cast_nullable_to_non_nullable
as String?,previousSignature: freezed == previousSignature ? _self.previousSignature : previousSignature // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,validationStamp: freezed == validationStamp ? _self.validationStamp : validationStamp // ignore: cast_nullable_to_non_nullable
as ValidationStamp?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BalanceCopyWith<$Res>? get balance {
    if (_self.balance == null) {
    return null;
  }

  return $BalanceCopyWith<$Res>(_self.balance!, (value) {
    return _then(_self.copyWith(balance: value));
  });
}/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get previousAddress {
    if (_self.previousAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.previousAddress!, (value) {
    return _then(_self.copyWith(previousAddress: value));
  });
}/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ValidationStampCopyWith<$Res>? get validationStamp {
    if (_self.validationStamp == null) {
    return null;
  }

  return $ValidationStampCopyWith<$Res>(_self.validationStamp!, (value) {
    return _then(_self.copyWith(validationStamp: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Transaction extends Transaction {
  const _Transaction({@AddressJsonConverter() this.address, this.balance, this.chainLength, final  List<CrossValidationStamp> crossValidationStamps = const [], this.data, final  List<TransactionInput> inputs = const [], this.originSignature, @AddressJsonConverter() this.previousAddress, this.previousPublicKey, this.previousSignature, this.type, this.validationStamp, this.version = kVersion}): _crossValidationStamps = crossValidationStamps,_inputs = inputs,super._();
  factory _Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);

///  hash of the new generated public key for the given transaction
@override@AddressJsonConverter() final  Address? address;
/// [Balance] represents a ledger balance
@override final  Balance? balance;
/// Length of the chain
@override final  int? chainLength;
/// Cross validation stamps: endorsements of the validation stamp from the coordinator
 final  List<CrossValidationStamp> _crossValidationStamps;
/// Cross validation stamps: endorsements of the validation stamp from the coordinator
@override@JsonKey() List<CrossValidationStamp> get crossValidationStamps {
  if (_crossValidationStamps is EqualUnmodifiableListView) return _crossValidationStamps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_crossValidationStamps);
}

/// Transaction data zone (identity, keychain, smart contract, etc.)
@override final  Data? data;
/// Represents the inputs from the transaction
 final  List<TransactionInput> _inputs;
/// Represents the inputs from the transaction
@override@JsonKey() List<TransactionInput> get inputs {
  if (_inputs is EqualUnmodifiableListView) return _inputs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inputs);
}

/// Signature from the device which originated the transaction (used in the Proof of work)
@override final  String? originSignature;
/// Previous address
@override@AddressJsonConverter() final  Address? previousAddress;
/// Previous generated public key matching the previous signature
@override final  String? previousPublicKey;
/// Signature from the previous public key
@override final  String? previousSignature;
/// Transaction type
@override final  String? type;
/// Coordinator work result
@override final  ValidationStamp? validationStamp;
/// Version of the transaction (used for backward compatiblity)
@override@JsonKey() final  int version;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionCopyWith<_Transaction> get copyWith => __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Transaction&&(identical(other.address, address) || other.address == address)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.chainLength, chainLength) || other.chainLength == chainLength)&&const DeepCollectionEquality().equals(other._crossValidationStamps, _crossValidationStamps)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other._inputs, _inputs)&&(identical(other.originSignature, originSignature) || other.originSignature == originSignature)&&(identical(other.previousAddress, previousAddress) || other.previousAddress == previousAddress)&&(identical(other.previousPublicKey, previousPublicKey) || other.previousPublicKey == previousPublicKey)&&(identical(other.previousSignature, previousSignature) || other.previousSignature == previousSignature)&&(identical(other.type, type) || other.type == type)&&(identical(other.validationStamp, validationStamp) || other.validationStamp == validationStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,balance,chainLength,const DeepCollectionEquality().hash(_crossValidationStamps),data,const DeepCollectionEquality().hash(_inputs),originSignature,previousAddress,previousPublicKey,previousSignature,type,validationStamp,version);

@override
String toString() {
  return 'Transaction(address: $address, balance: $balance, chainLength: $chainLength, crossValidationStamps: $crossValidationStamps, data: $data, inputs: $inputs, originSignature: $originSignature, previousAddress: $previousAddress, previousPublicKey: $previousPublicKey, previousSignature: $previousSignature, type: $type, validationStamp: $validationStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res> implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(_Transaction value, $Res Function(_Transaction) _then) = __$TransactionCopyWithImpl;
@override @useResult
$Res call({
@AddressJsonConverter() Address? address, Balance? balance, int? chainLength, List<CrossValidationStamp> crossValidationStamps, Data? data, List<TransactionInput> inputs, String? originSignature,@AddressJsonConverter() Address? previousAddress, String? previousPublicKey, String? previousSignature, String? type, ValidationStamp? validationStamp, int version
});


@override $AddressCopyWith<$Res>? get address;@override $BalanceCopyWith<$Res>? get balance;@override $DataCopyWith<$Res>? get data;@override $AddressCopyWith<$Res>? get previousAddress;@override $ValidationStampCopyWith<$Res>? get validationStamp;

}
/// @nodoc
class __$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = freezed,Object? balance = freezed,Object? chainLength = freezed,Object? crossValidationStamps = null,Object? data = freezed,Object? inputs = null,Object? originSignature = freezed,Object? previousAddress = freezed,Object? previousPublicKey = freezed,Object? previousSignature = freezed,Object? type = freezed,Object? validationStamp = freezed,Object? version = null,}) {
  return _then(_Transaction(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as Balance?,chainLength: freezed == chainLength ? _self.chainLength : chainLength // ignore: cast_nullable_to_non_nullable
as int?,crossValidationStamps: null == crossValidationStamps ? _self._crossValidationStamps : crossValidationStamps // ignore: cast_nullable_to_non_nullable
as List<CrossValidationStamp>,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,inputs: null == inputs ? _self._inputs : inputs // ignore: cast_nullable_to_non_nullable
as List<TransactionInput>,originSignature: freezed == originSignature ? _self.originSignature : originSignature // ignore: cast_nullable_to_non_nullable
as String?,previousAddress: freezed == previousAddress ? _self.previousAddress : previousAddress // ignore: cast_nullable_to_non_nullable
as Address?,previousPublicKey: freezed == previousPublicKey ? _self.previousPublicKey : previousPublicKey // ignore: cast_nullable_to_non_nullable
as String?,previousSignature: freezed == previousSignature ? _self.previousSignature : previousSignature // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,validationStamp: freezed == validationStamp ? _self.validationStamp : validationStamp // ignore: cast_nullable_to_non_nullable
as ValidationStamp?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BalanceCopyWith<$Res>? get balance {
    if (_self.balance == null) {
    return null;
  }

  return $BalanceCopyWith<$Res>(_self.balance!, (value) {
    return _then(_self.copyWith(balance: value));
  });
}/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get previousAddress {
    if (_self.previousAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.previousAddress!, (value) {
    return _then(_self.copyWith(previousAddress: value));
  });
}/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ValidationStampCopyWith<$Res>? get validationStamp {
    if (_self.validationStamp == null) {
    return null;
  }

  return $ValidationStampCopyWith<$Res>(_self.validationStamp!, (value) {
    return _then(_self.copyWith(validationStamp: value));
  });
}
}

// dart format on
