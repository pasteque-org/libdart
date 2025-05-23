// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_fee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionFee {

/// The transaction fee amount in the smallest unit of UCO (e.g., nanoUCOs).
 int? get fee;/// Exchange rates for the transaction fee to various fiat currencies.
 Rates? get rates;/// Error details if the fee calculation failed or encountered issues.
 TransactionFeeErrors? get errors;
/// Create a copy of TransactionFee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionFeeCopyWith<TransactionFee> get copyWith => _$TransactionFeeCopyWithImpl<TransactionFee>(this as TransactionFee, _$identity);

  /// Serializes this TransactionFee to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionFee&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.rates, rates) || other.rates == rates)&&(identical(other.errors, errors) || other.errors == errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fee,rates,errors);

@override
String toString() {
  return 'TransactionFee(fee: $fee, rates: $rates, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $TransactionFeeCopyWith<$Res>  {
  factory $TransactionFeeCopyWith(TransactionFee value, $Res Function(TransactionFee) _then) = _$TransactionFeeCopyWithImpl;
@useResult
$Res call({
 int? fee, Rates? rates, TransactionFeeErrors? errors
});


$RatesCopyWith<$Res>? get rates;$TransactionFeeErrorsCopyWith<$Res>? get errors;

}
/// @nodoc
class _$TransactionFeeCopyWithImpl<$Res>
    implements $TransactionFeeCopyWith<$Res> {
  _$TransactionFeeCopyWithImpl(this._self, this._then);

  final TransactionFee _self;
  final $Res Function(TransactionFee) _then;

/// Create a copy of TransactionFee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fee = freezed,Object? rates = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
fee: freezed == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as int?,rates: freezed == rates ? _self.rates : rates // ignore: cast_nullable_to_non_nullable
as Rates?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as TransactionFeeErrors?,
  ));
}
/// Create a copy of TransactionFee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatesCopyWith<$Res>? get rates {
    if (_self.rates == null) {
    return null;
  }

  return $RatesCopyWith<$Res>(_self.rates!, (value) {
    return _then(_self.copyWith(rates: value));
  });
}/// Create a copy of TransactionFee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionFeeErrorsCopyWith<$Res>? get errors {
    if (_self.errors == null) {
    return null;
  }

  return $TransactionFeeErrorsCopyWith<$Res>(_self.errors!, (value) {
    return _then(_self.copyWith(errors: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _TransactionFee extends TransactionFee {
  const _TransactionFee({this.fee, this.rates, this.errors}): super._();
  factory _TransactionFee.fromJson(Map<String, dynamic> json) => _$TransactionFeeFromJson(json);

/// The transaction fee amount in the smallest unit of UCO (e.g., nanoUCOs).
@override final  int? fee;
/// Exchange rates for the transaction fee to various fiat currencies.
@override final  Rates? rates;
/// Error details if the fee calculation failed or encountered issues.
@override final  TransactionFeeErrors? errors;

/// Create a copy of TransactionFee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionFeeCopyWith<_TransactionFee> get copyWith => __$TransactionFeeCopyWithImpl<_TransactionFee>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionFeeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionFee&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.rates, rates) || other.rates == rates)&&(identical(other.errors, errors) || other.errors == errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fee,rates,errors);

@override
String toString() {
  return 'TransactionFee(fee: $fee, rates: $rates, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$TransactionFeeCopyWith<$Res> implements $TransactionFeeCopyWith<$Res> {
  factory _$TransactionFeeCopyWith(_TransactionFee value, $Res Function(_TransactionFee) _then) = __$TransactionFeeCopyWithImpl;
@override @useResult
$Res call({
 int? fee, Rates? rates, TransactionFeeErrors? errors
});


@override $RatesCopyWith<$Res>? get rates;@override $TransactionFeeErrorsCopyWith<$Res>? get errors;

}
/// @nodoc
class __$TransactionFeeCopyWithImpl<$Res>
    implements _$TransactionFeeCopyWith<$Res> {
  __$TransactionFeeCopyWithImpl(this._self, this._then);

  final _TransactionFee _self;
  final $Res Function(_TransactionFee) _then;

/// Create a copy of TransactionFee
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fee = freezed,Object? rates = freezed,Object? errors = freezed,}) {
  return _then(_TransactionFee(
fee: freezed == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as int?,rates: freezed == rates ? _self.rates : rates // ignore: cast_nullable_to_non_nullable
as Rates?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as TransactionFeeErrors?,
  ));
}

/// Create a copy of TransactionFee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatesCopyWith<$Res>? get rates {
    if (_self.rates == null) {
    return null;
  }

  return $RatesCopyWith<$Res>(_self.rates!, (value) {
    return _then(_self.copyWith(rates: value));
  });
}/// Create a copy of TransactionFee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionFeeErrorsCopyWith<$Res>? get errors {
    if (_self.errors == null) {
    return null;
  }

  return $TransactionFeeErrorsCopyWith<$Res>(_self.errors!, (value) {
    return _then(_self.copyWith(errors: value));
  });
}
}


/// @nodoc
mixin _$Rates {

/// The equivalent fee amount in EUR.
 double? get eur;/// The equivalent fee amount in USD.
 double? get usd;/// Error details if fetching rates failed.
 TransactionFeeErrors? get errors;
/// Create a copy of Rates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RatesCopyWith<Rates> get copyWith => _$RatesCopyWithImpl<Rates>(this as Rates, _$identity);

  /// Serializes this Rates to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Rates&&(identical(other.eur, eur) || other.eur == eur)&&(identical(other.usd, usd) || other.usd == usd)&&(identical(other.errors, errors) || other.errors == errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eur,usd,errors);

@override
String toString() {
  return 'Rates(eur: $eur, usd: $usd, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $RatesCopyWith<$Res>  {
  factory $RatesCopyWith(Rates value, $Res Function(Rates) _then) = _$RatesCopyWithImpl;
@useResult
$Res call({
 double? eur, double? usd, TransactionFeeErrors? errors
});


$TransactionFeeErrorsCopyWith<$Res>? get errors;

}
/// @nodoc
class _$RatesCopyWithImpl<$Res>
    implements $RatesCopyWith<$Res> {
  _$RatesCopyWithImpl(this._self, this._then);

  final Rates _self;
  final $Res Function(Rates) _then;

/// Create a copy of Rates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eur = freezed,Object? usd = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
eur: freezed == eur ? _self.eur : eur // ignore: cast_nullable_to_non_nullable
as double?,usd: freezed == usd ? _self.usd : usd // ignore: cast_nullable_to_non_nullable
as double?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as TransactionFeeErrors?,
  ));
}
/// Create a copy of Rates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionFeeErrorsCopyWith<$Res>? get errors {
    if (_self.errors == null) {
    return null;
  }

  return $TransactionFeeErrorsCopyWith<$Res>(_self.errors!, (value) {
    return _then(_self.copyWith(errors: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Rates extends Rates {
  const _Rates({this.eur, this.usd, this.errors}): super._();
  factory _Rates.fromJson(Map<String, dynamic> json) => _$RatesFromJson(json);

/// The equivalent fee amount in EUR.
@override final  double? eur;
/// The equivalent fee amount in USD.
@override final  double? usd;
/// Error details if fetching rates failed.
@override final  TransactionFeeErrors? errors;

/// Create a copy of Rates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RatesCopyWith<_Rates> get copyWith => __$RatesCopyWithImpl<_Rates>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RatesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Rates&&(identical(other.eur, eur) || other.eur == eur)&&(identical(other.usd, usd) || other.usd == usd)&&(identical(other.errors, errors) || other.errors == errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eur,usd,errors);

@override
String toString() {
  return 'Rates(eur: $eur, usd: $usd, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$RatesCopyWith<$Res> implements $RatesCopyWith<$Res> {
  factory _$RatesCopyWith(_Rates value, $Res Function(_Rates) _then) = __$RatesCopyWithImpl;
@override @useResult
$Res call({
 double? eur, double? usd, TransactionFeeErrors? errors
});


@override $TransactionFeeErrorsCopyWith<$Res>? get errors;

}
/// @nodoc
class __$RatesCopyWithImpl<$Res>
    implements _$RatesCopyWith<$Res> {
  __$RatesCopyWithImpl(this._self, this._then);

  final _Rates _self;
  final $Res Function(_Rates) _then;

/// Create a copy of Rates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eur = freezed,Object? usd = freezed,Object? errors = freezed,}) {
  return _then(_Rates(
eur: freezed == eur ? _self.eur : eur // ignore: cast_nullable_to_non_nullable
as double?,usd: freezed == usd ? _self.usd : usd // ignore: cast_nullable_to_non_nullable
as double?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as TransactionFeeErrors?,
  ));
}

/// Create a copy of Rates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionFeeErrorsCopyWith<$Res>? get errors {
    if (_self.errors == null) {
    return null;
  }

  return $TransactionFeeErrorsCopyWith<$Res>(_self.errors!, (value) {
    return _then(_self.copyWith(errors: value));
  });
}
}


/// @nodoc
mixin _$TransactionFeeErrors {

/// Potentially problematic or erroneous data that contributed to the error.
 Data? get data;/// Further nested error details.
 TransactionFeeErrors? get errors;
/// Create a copy of TransactionFeeErrors
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionFeeErrorsCopyWith<TransactionFeeErrors> get copyWith => _$TransactionFeeErrorsCopyWithImpl<TransactionFeeErrors>(this as TransactionFeeErrors, _$identity);

  /// Serializes this TransactionFeeErrors to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionFeeErrors&&(identical(other.data, data) || other.data == data)&&(identical(other.errors, errors) || other.errors == errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,errors);

@override
String toString() {
  return 'TransactionFeeErrors(data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $TransactionFeeErrorsCopyWith<$Res>  {
  factory $TransactionFeeErrorsCopyWith(TransactionFeeErrors value, $Res Function(TransactionFeeErrors) _then) = _$TransactionFeeErrorsCopyWithImpl;
@useResult
$Res call({
 Data? data, TransactionFeeErrors? errors
});


$DataCopyWith<$Res>? get data;$TransactionFeeErrorsCopyWith<$Res>? get errors;

}
/// @nodoc
class _$TransactionFeeErrorsCopyWithImpl<$Res>
    implements $TransactionFeeErrorsCopyWith<$Res> {
  _$TransactionFeeErrorsCopyWithImpl(this._self, this._then);

  final TransactionFeeErrors _self;
  final $Res Function(TransactionFeeErrors) _then;

/// Create a copy of TransactionFeeErrors
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as TransactionFeeErrors?,
  ));
}
/// Create a copy of TransactionFeeErrors
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
}/// Create a copy of TransactionFeeErrors
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionFeeErrorsCopyWith<$Res>? get errors {
    if (_self.errors == null) {
    return null;
  }

  return $TransactionFeeErrorsCopyWith<$Res>(_self.errors!, (value) {
    return _then(_self.copyWith(errors: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _TransactionFeeErrors extends TransactionFeeErrors {
  const _TransactionFeeErrors({this.data, this.errors}): super._();
  factory _TransactionFeeErrors.fromJson(Map<String, dynamic> json) => _$TransactionFeeErrorsFromJson(json);

/// Potentially problematic or erroneous data that contributed to the error.
@override final  Data? data;
/// Further nested error details.
@override final  TransactionFeeErrors? errors;

/// Create a copy of TransactionFeeErrors
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionFeeErrorsCopyWith<_TransactionFeeErrors> get copyWith => __$TransactionFeeErrorsCopyWithImpl<_TransactionFeeErrors>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionFeeErrorsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionFeeErrors&&(identical(other.data, data) || other.data == data)&&(identical(other.errors, errors) || other.errors == errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,errors);

@override
String toString() {
  return 'TransactionFeeErrors(data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$TransactionFeeErrorsCopyWith<$Res> implements $TransactionFeeErrorsCopyWith<$Res> {
  factory _$TransactionFeeErrorsCopyWith(_TransactionFeeErrors value, $Res Function(_TransactionFeeErrors) _then) = __$TransactionFeeErrorsCopyWithImpl;
@override @useResult
$Res call({
 Data? data, TransactionFeeErrors? errors
});


@override $DataCopyWith<$Res>? get data;@override $TransactionFeeErrorsCopyWith<$Res>? get errors;

}
/// @nodoc
class __$TransactionFeeErrorsCopyWithImpl<$Res>
    implements _$TransactionFeeErrorsCopyWith<$Res> {
  __$TransactionFeeErrorsCopyWithImpl(this._self, this._then);

  final _TransactionFeeErrors _self;
  final $Res Function(_TransactionFeeErrors) _then;

/// Create a copy of TransactionFeeErrors
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? errors = freezed,}) {
  return _then(_TransactionFeeErrors(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as TransactionFeeErrors?,
  ));
}

/// Create a copy of TransactionFeeErrors
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
}/// Create a copy of TransactionFeeErrors
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionFeeErrorsCopyWith<$Res>? get errors {
    if (_self.errors == null) {
    return null;
  }

  return $TransactionFeeErrorsCopyWith<$Res>(_self.errors!, (value) {
    return _then(_self.copyWith(errors: value));
  });
}
}

// dart format on
