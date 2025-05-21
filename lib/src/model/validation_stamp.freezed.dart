// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_stamp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidationStamp {

/// Details of the ledger operations (e.g., UCO transfers, token transfers) validated in the transaction.
 LedgerOperations? get ledgerOperations;/// A hash representing the proof of integrity. This typically includes a hash of the transaction
/// itself and a link to the previous proof of integrity, forming a chain.
 String? get proofOfIntegrity;/// Proof of work associated with the transaction or its validation.
/// Note: The comment "Public key matching the origin signature" might be misleading or specific to a certain context.
/// Generally, this field holds a proof of computational work.
 String? get proofOfWork;/// The digital signature of the coordinator that validated the transaction and issued this stamp.
 String? get signature;/// The Unix timestamp indicating when the validation occurred.
 int? get timestamp;/// The version of the transaction validation protocol used by the coordinator.
 int? get protocolVersion;
/// Create a copy of ValidationStamp
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidationStampCopyWith<ValidationStamp> get copyWith => _$ValidationStampCopyWithImpl<ValidationStamp>(this as ValidationStamp, _$identity);

  /// Serializes this ValidationStamp to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidationStamp&&(identical(other.ledgerOperations, ledgerOperations) || other.ledgerOperations == ledgerOperations)&&(identical(other.proofOfIntegrity, proofOfIntegrity) || other.proofOfIntegrity == proofOfIntegrity)&&(identical(other.proofOfWork, proofOfWork) || other.proofOfWork == proofOfWork)&&(identical(other.signature, signature) || other.signature == signature)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.protocolVersion, protocolVersion) || other.protocolVersion == protocolVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ledgerOperations,proofOfIntegrity,proofOfWork,signature,timestamp,protocolVersion);

@override
String toString() {
  return 'ValidationStamp(ledgerOperations: $ledgerOperations, proofOfIntegrity: $proofOfIntegrity, proofOfWork: $proofOfWork, signature: $signature, timestamp: $timestamp, protocolVersion: $protocolVersion)';
}


}

/// @nodoc
abstract mixin class $ValidationStampCopyWith<$Res>  {
  factory $ValidationStampCopyWith(ValidationStamp value, $Res Function(ValidationStamp) _then) = _$ValidationStampCopyWithImpl;
@useResult
$Res call({
 LedgerOperations? ledgerOperations, String? proofOfIntegrity, String? proofOfWork, String? signature, int? timestamp, int? protocolVersion
});


$LedgerOperationsCopyWith<$Res>? get ledgerOperations;

}
/// @nodoc
class _$ValidationStampCopyWithImpl<$Res>
    implements $ValidationStampCopyWith<$Res> {
  _$ValidationStampCopyWithImpl(this._self, this._then);

  final ValidationStamp _self;
  final $Res Function(ValidationStamp) _then;

/// Create a copy of ValidationStamp
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ledgerOperations = freezed,Object? proofOfIntegrity = freezed,Object? proofOfWork = freezed,Object? signature = freezed,Object? timestamp = freezed,Object? protocolVersion = freezed,}) {
  return _then(_self.copyWith(
ledgerOperations: freezed == ledgerOperations ? _self.ledgerOperations : ledgerOperations // ignore: cast_nullable_to_non_nullable
as LedgerOperations?,proofOfIntegrity: freezed == proofOfIntegrity ? _self.proofOfIntegrity : proofOfIntegrity // ignore: cast_nullable_to_non_nullable
as String?,proofOfWork: freezed == proofOfWork ? _self.proofOfWork : proofOfWork // ignore: cast_nullable_to_non_nullable
as String?,signature: freezed == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,protocolVersion: freezed == protocolVersion ? _self.protocolVersion : protocolVersion // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of ValidationStamp
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerOperationsCopyWith<$Res>? get ledgerOperations {
    if (_self.ledgerOperations == null) {
    return null;
  }

  return $LedgerOperationsCopyWith<$Res>(_self.ledgerOperations!, (value) {
    return _then(_self.copyWith(ledgerOperations: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ValidationStamp extends ValidationStamp {
  const _ValidationStamp({this.ledgerOperations, this.proofOfIntegrity, this.proofOfWork, this.signature, this.timestamp, this.protocolVersion}): super._();
  factory _ValidationStamp.fromJson(Map<String, dynamic> json) => _$ValidationStampFromJson(json);

/// Details of the ledger operations (e.g., UCO transfers, token transfers) validated in the transaction.
@override final  LedgerOperations? ledgerOperations;
/// A hash representing the proof of integrity. This typically includes a hash of the transaction
/// itself and a link to the previous proof of integrity, forming a chain.
@override final  String? proofOfIntegrity;
/// Proof of work associated with the transaction or its validation.
/// Note: The comment "Public key matching the origin signature" might be misleading or specific to a certain context.
/// Generally, this field holds a proof of computational work.
@override final  String? proofOfWork;
/// The digital signature of the coordinator that validated the transaction and issued this stamp.
@override final  String? signature;
/// The Unix timestamp indicating when the validation occurred.
@override final  int? timestamp;
/// The version of the transaction validation protocol used by the coordinator.
@override final  int? protocolVersion;

/// Create a copy of ValidationStamp
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidationStampCopyWith<_ValidationStamp> get copyWith => __$ValidationStampCopyWithImpl<_ValidationStamp>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValidationStampToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValidationStamp&&(identical(other.ledgerOperations, ledgerOperations) || other.ledgerOperations == ledgerOperations)&&(identical(other.proofOfIntegrity, proofOfIntegrity) || other.proofOfIntegrity == proofOfIntegrity)&&(identical(other.proofOfWork, proofOfWork) || other.proofOfWork == proofOfWork)&&(identical(other.signature, signature) || other.signature == signature)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.protocolVersion, protocolVersion) || other.protocolVersion == protocolVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ledgerOperations,proofOfIntegrity,proofOfWork,signature,timestamp,protocolVersion);

@override
String toString() {
  return 'ValidationStamp(ledgerOperations: $ledgerOperations, proofOfIntegrity: $proofOfIntegrity, proofOfWork: $proofOfWork, signature: $signature, timestamp: $timestamp, protocolVersion: $protocolVersion)';
}


}

/// @nodoc
abstract mixin class _$ValidationStampCopyWith<$Res> implements $ValidationStampCopyWith<$Res> {
  factory _$ValidationStampCopyWith(_ValidationStamp value, $Res Function(_ValidationStamp) _then) = __$ValidationStampCopyWithImpl;
@override @useResult
$Res call({
 LedgerOperations? ledgerOperations, String? proofOfIntegrity, String? proofOfWork, String? signature, int? timestamp, int? protocolVersion
});


@override $LedgerOperationsCopyWith<$Res>? get ledgerOperations;

}
/// @nodoc
class __$ValidationStampCopyWithImpl<$Res>
    implements _$ValidationStampCopyWith<$Res> {
  __$ValidationStampCopyWithImpl(this._self, this._then);

  final _ValidationStamp _self;
  final $Res Function(_ValidationStamp) _then;

/// Create a copy of ValidationStamp
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ledgerOperations = freezed,Object? proofOfIntegrity = freezed,Object? proofOfWork = freezed,Object? signature = freezed,Object? timestamp = freezed,Object? protocolVersion = freezed,}) {
  return _then(_ValidationStamp(
ledgerOperations: freezed == ledgerOperations ? _self.ledgerOperations : ledgerOperations // ignore: cast_nullable_to_non_nullable
as LedgerOperations?,proofOfIntegrity: freezed == proofOfIntegrity ? _self.proofOfIntegrity : proofOfIntegrity // ignore: cast_nullable_to_non_nullable
as String?,proofOfWork: freezed == proofOfWork ? _self.proofOfWork : proofOfWork // ignore: cast_nullable_to_non_nullable
as String?,signature: freezed == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,protocolVersion: freezed == protocolVersion ? _self.protocolVersion : protocolVersion // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of ValidationStamp
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerOperationsCopyWith<$Res>? get ledgerOperations {
    if (_self.ledgerOperations == null) {
    return null;
  }

  return $LedgerOperationsCopyWith<$Res>(_self.ledgerOperations!, (value) {
    return _then(_self.copyWith(ledgerOperations: value));
  });
}
}

// dart format on
