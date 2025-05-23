// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionError {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionError()';
}


}

/// @nodoc
class $TransactionErrorCopyWith<$Res>  {
$TransactionErrorCopyWith(TransactionError _, $Res Function(TransactionError) __);
}


/// @nodoc


class _TransactionTimeout extends TransactionError {
  const _TransactionTimeout(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionTimeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionError.timeout()';
}


}




/// @nodoc


class _TransactionConnectionError extends TransactionError {
  const _TransactionConnectionError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionConnectionError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionError.connectivity()';
}


}




/// @nodoc


class _TransactionConsensusNotReachedError extends TransactionError {
  const _TransactionConsensusNotReachedError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionConsensusNotReachedError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionError.consensusNotReached()';
}


}




/// @nodoc


class _TransactionInvalid extends TransactionError {
  const _TransactionInvalid(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionInvalid);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionError.invalidTransaction()';
}


}




/// @nodoc


class _TransactionInvalidConfirmation extends TransactionError {
  const _TransactionInvalidConfirmation(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionInvalidConfirmation);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionError.invalidConfirmation()';
}


}




/// @nodoc


class _TransactionInsufficientFunds extends TransactionError {
  const _TransactionInsufficientFunds(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionInsufficientFunds);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionError.insufficientFunds()';
}


}




/// @nodoc


class _TransactionServiceNotFound extends TransactionError {
  const _TransactionServiceNotFound(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionServiceNotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionError.serviceNotFound()';
}


}




/// @nodoc


class _TransactionServiceAlreadyExists extends TransactionError {
  const _TransactionServiceAlreadyExists(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionServiceAlreadyExists);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionError.serviceAlreadyExists()';
}


}




/// @nodoc


class _TransactionUserRejected extends TransactionError {
  const _TransactionUserRejected(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionUserRejected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionError.userRejected()';
}


}




/// @nodoc


class _TransactionUnknownAccount extends TransactionError {
  const _TransactionUnknownAccount({required this.accountName}): super._();
  

 final  String accountName;

/// Create a copy of TransactionError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionUnknownAccountCopyWith<_TransactionUnknownAccount> get copyWith => __$TransactionUnknownAccountCopyWithImpl<_TransactionUnknownAccount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionUnknownAccount&&(identical(other.accountName, accountName) || other.accountName == accountName));
}


@override
int get hashCode => Object.hash(runtimeType,accountName);

@override
String toString() {
  return 'TransactionError.unknownAccount(accountName: $accountName)';
}


}

/// @nodoc
abstract mixin class _$TransactionUnknownAccountCopyWith<$Res> implements $TransactionErrorCopyWith<$Res> {
  factory _$TransactionUnknownAccountCopyWith(_TransactionUnknownAccount value, $Res Function(_TransactionUnknownAccount) _then) = __$TransactionUnknownAccountCopyWithImpl;
@useResult
$Res call({
 String accountName
});




}
/// @nodoc
class __$TransactionUnknownAccountCopyWithImpl<$Res>
    implements _$TransactionUnknownAccountCopyWith<$Res> {
  __$TransactionUnknownAccountCopyWithImpl(this._self, this._then);

  final _TransactionUnknownAccount _self;
  final $Res Function(_TransactionUnknownAccount) _then;

/// Create a copy of TransactionError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? accountName = null,}) {
  return _then(_TransactionUnknownAccount(
accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _TransactionRPCError extends TransactionError {
  const _TransactionRPCError({required this.code, required this.message, this.data}): super._();
  

 final  int code;
 final  String message;
 final  Object? data;

/// Create a copy of TransactionError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionRPCErrorCopyWith<_TransactionRPCError> get copyWith => __$TransactionRPCErrorCopyWithImpl<_TransactionRPCError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionRPCError&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,code,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'TransactionError.rpcError(code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$TransactionRPCErrorCopyWith<$Res> implements $TransactionErrorCopyWith<$Res> {
  factory _$TransactionRPCErrorCopyWith(_TransactionRPCError value, $Res Function(_TransactionRPCError) _then) = __$TransactionRPCErrorCopyWithImpl;
@useResult
$Res call({
 int code, String message, Object? data
});




}
/// @nodoc
class __$TransactionRPCErrorCopyWithImpl<$Res>
    implements _$TransactionRPCErrorCopyWith<$Res> {
  __$TransactionRPCErrorCopyWithImpl(this._self, this._then);

  final _TransactionRPCError _self;
  final $Res Function(_TransactionRPCError) _then;

/// Create a copy of TransactionError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,Object? data = freezed,}) {
  return _then(_TransactionRPCError(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data ,
  ));
}


}

/// @nodoc


class _TransactionOtherError extends TransactionError {
  const _TransactionOtherError({this.code, this.data, this.message}): super._();
  

 final  int? code;
 final  Object? data;
 final  String? message;

/// Create a copy of TransactionError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionOtherErrorCopyWith<_TransactionOtherError> get copyWith => __$TransactionOtherErrorCopyWithImpl<_TransactionOtherError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionOtherError&&(identical(other.code, code) || other.code == code)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,code,const DeepCollectionEquality().hash(data),message);

@override
String toString() {
  return 'TransactionError.other(code: $code, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$TransactionOtherErrorCopyWith<$Res> implements $TransactionErrorCopyWith<$Res> {
  factory _$TransactionOtherErrorCopyWith(_TransactionOtherError value, $Res Function(_TransactionOtherError) _then) = __$TransactionOtherErrorCopyWithImpl;
@useResult
$Res call({
 int? code, Object? data, String? message
});




}
/// @nodoc
class __$TransactionOtherErrorCopyWithImpl<$Res>
    implements _$TransactionOtherErrorCopyWith<$Res> {
  __$TransactionOtherErrorCopyWithImpl(this._self, this._then);

  final _TransactionOtherError _self;
  final $Res Function(_TransactionOtherError) _then;

/// Create a copy of TransactionError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? data = freezed,Object? message = freezed,}) {
  return _then(_TransactionOtherError(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data ,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$TransactionConfirmation {

 String get transactionAddress; int get nbConfirmations; int get maxConfirmations; double get ratio; bool get ratioEqualIncluded;
/// Create a copy of TransactionConfirmation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionConfirmationCopyWith<TransactionConfirmation> get copyWith => _$TransactionConfirmationCopyWithImpl<TransactionConfirmation>(this as TransactionConfirmation, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionConfirmation&&(identical(other.transactionAddress, transactionAddress) || other.transactionAddress == transactionAddress)&&(identical(other.nbConfirmations, nbConfirmations) || other.nbConfirmations == nbConfirmations)&&(identical(other.maxConfirmations, maxConfirmations) || other.maxConfirmations == maxConfirmations)&&(identical(other.ratio, ratio) || other.ratio == ratio)&&(identical(other.ratioEqualIncluded, ratioEqualIncluded) || other.ratioEqualIncluded == ratioEqualIncluded));
}


@override
int get hashCode => Object.hash(runtimeType,transactionAddress,nbConfirmations,maxConfirmations,ratio,ratioEqualIncluded);

@override
String toString() {
  return 'TransactionConfirmation(transactionAddress: $transactionAddress, nbConfirmations: $nbConfirmations, maxConfirmations: $maxConfirmations, ratio: $ratio, ratioEqualIncluded: $ratioEqualIncluded)';
}


}

/// @nodoc
abstract mixin class $TransactionConfirmationCopyWith<$Res>  {
  factory $TransactionConfirmationCopyWith(TransactionConfirmation value, $Res Function(TransactionConfirmation) _then) = _$TransactionConfirmationCopyWithImpl;
@useResult
$Res call({
 String transactionAddress, int nbConfirmations, int maxConfirmations, double ratio, bool ratioEqualIncluded
});




}
/// @nodoc
class _$TransactionConfirmationCopyWithImpl<$Res>
    implements $TransactionConfirmationCopyWith<$Res> {
  _$TransactionConfirmationCopyWithImpl(this._self, this._then);

  final TransactionConfirmation _self;
  final $Res Function(TransactionConfirmation) _then;

/// Create a copy of TransactionConfirmation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionAddress = null,Object? nbConfirmations = null,Object? maxConfirmations = null,Object? ratio = null,Object? ratioEqualIncluded = null,}) {
  return _then(_self.copyWith(
transactionAddress: null == transactionAddress ? _self.transactionAddress : transactionAddress // ignore: cast_nullable_to_non_nullable
as String,nbConfirmations: null == nbConfirmations ? _self.nbConfirmations : nbConfirmations // ignore: cast_nullable_to_non_nullable
as int,maxConfirmations: null == maxConfirmations ? _self.maxConfirmations : maxConfirmations // ignore: cast_nullable_to_non_nullable
as int,ratio: null == ratio ? _self.ratio : ratio // ignore: cast_nullable_to_non_nullable
as double,ratioEqualIncluded: null == ratioEqualIncluded ? _self.ratioEqualIncluded : ratioEqualIncluded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _TransactionConfirmation extends TransactionConfirmation {
  const _TransactionConfirmation({required this.transactionAddress, this.nbConfirmations = 0, this.maxConfirmations = 0, this.ratio = 0.0, this.ratioEqualIncluded = true}): super._();
  

@override final  String transactionAddress;
@override@JsonKey() final  int nbConfirmations;
@override@JsonKey() final  int maxConfirmations;
@override@JsonKey() final  double ratio;
@override@JsonKey() final  bool ratioEqualIncluded;

/// Create a copy of TransactionConfirmation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionConfirmationCopyWith<_TransactionConfirmation> get copyWith => __$TransactionConfirmationCopyWithImpl<_TransactionConfirmation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionConfirmation&&(identical(other.transactionAddress, transactionAddress) || other.transactionAddress == transactionAddress)&&(identical(other.nbConfirmations, nbConfirmations) || other.nbConfirmations == nbConfirmations)&&(identical(other.maxConfirmations, maxConfirmations) || other.maxConfirmations == maxConfirmations)&&(identical(other.ratio, ratio) || other.ratio == ratio)&&(identical(other.ratioEqualIncluded, ratioEqualIncluded) || other.ratioEqualIncluded == ratioEqualIncluded));
}


@override
int get hashCode => Object.hash(runtimeType,transactionAddress,nbConfirmations,maxConfirmations,ratio,ratioEqualIncluded);

@override
String toString() {
  return 'TransactionConfirmation(transactionAddress: $transactionAddress, nbConfirmations: $nbConfirmations, maxConfirmations: $maxConfirmations, ratio: $ratio, ratioEqualIncluded: $ratioEqualIncluded)';
}


}

/// @nodoc
abstract mixin class _$TransactionConfirmationCopyWith<$Res> implements $TransactionConfirmationCopyWith<$Res> {
  factory _$TransactionConfirmationCopyWith(_TransactionConfirmation value, $Res Function(_TransactionConfirmation) _then) = __$TransactionConfirmationCopyWithImpl;
@override @useResult
$Res call({
 String transactionAddress, int nbConfirmations, int maxConfirmations, double ratio, bool ratioEqualIncluded
});




}
/// @nodoc
class __$TransactionConfirmationCopyWithImpl<$Res>
    implements _$TransactionConfirmationCopyWith<$Res> {
  __$TransactionConfirmationCopyWithImpl(this._self, this._then);

  final _TransactionConfirmation _self;
  final $Res Function(_TransactionConfirmation) _then;

/// Create a copy of TransactionConfirmation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionAddress = null,Object? nbConfirmations = null,Object? maxConfirmations = null,Object? ratio = null,Object? ratioEqualIncluded = null,}) {
  return _then(_TransactionConfirmation(
transactionAddress: null == transactionAddress ? _self.transactionAddress : transactionAddress // ignore: cast_nullable_to_non_nullable
as String,nbConfirmations: null == nbConfirmations ? _self.nbConfirmations : nbConfirmations // ignore: cast_nullable_to_non_nullable
as int,maxConfirmations: null == maxConfirmations ? _self.maxConfirmations : maxConfirmations // ignore: cast_nullable_to_non_nullable
as int,ratio: null == ratio ? _self.ratio : ratio // ignore: cast_nullable_to_non_nullable
as double,ratioEqualIncluded: null == ratioEqualIncluded ? _self.ratioEqualIncluded : ratioEqualIncluded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
