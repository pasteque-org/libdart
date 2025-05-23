// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ownership.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Ownership {

/// A list of public keys that are authorized to access or decrypt the [secret].
 List<AuthorizedKey> get authorizedPublicKeys;/// The encrypted secret data or a pointer/reference to it. Can be null.
 String? get secret;
/// Create a copy of Ownership
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OwnershipCopyWith<Ownership> get copyWith => _$OwnershipCopyWithImpl<Ownership>(this as Ownership, _$identity);

  /// Serializes this Ownership to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ownership&&const DeepCollectionEquality().equals(other.authorizedPublicKeys, authorizedPublicKeys)&&(identical(other.secret, secret) || other.secret == secret));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(authorizedPublicKeys),secret);

@override
String toString() {
  return 'Ownership(authorizedPublicKeys: $authorizedPublicKeys, secret: $secret)';
}


}

/// @nodoc
abstract mixin class $OwnershipCopyWith<$Res>  {
  factory $OwnershipCopyWith(Ownership value, $Res Function(Ownership) _then) = _$OwnershipCopyWithImpl;
@useResult
$Res call({
 List<AuthorizedKey> authorizedPublicKeys, String? secret
});




}
/// @nodoc
class _$OwnershipCopyWithImpl<$Res>
    implements $OwnershipCopyWith<$Res> {
  _$OwnershipCopyWithImpl(this._self, this._then);

  final Ownership _self;
  final $Res Function(Ownership) _then;

/// Create a copy of Ownership
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? authorizedPublicKeys = null,Object? secret = freezed,}) {
  return _then(_self.copyWith(
authorizedPublicKeys: null == authorizedPublicKeys ? _self.authorizedPublicKeys : authorizedPublicKeys // ignore: cast_nullable_to_non_nullable
as List<AuthorizedKey>,secret: freezed == secret ? _self.secret : secret // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Ownership extends Ownership {
  const _Ownership({final  List<AuthorizedKey> authorizedPublicKeys = const [], this.secret}): _authorizedPublicKeys = authorizedPublicKeys,super._();
  factory _Ownership.fromJson(Map<String, dynamic> json) => _$OwnershipFromJson(json);

/// A list of public keys that are authorized to access or decrypt the [secret].
 final  List<AuthorizedKey> _authorizedPublicKeys;
/// A list of public keys that are authorized to access or decrypt the [secret].
@override@JsonKey() List<AuthorizedKey> get authorizedPublicKeys {
  if (_authorizedPublicKeys is EqualUnmodifiableListView) return _authorizedPublicKeys;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_authorizedPublicKeys);
}

/// The encrypted secret data or a pointer/reference to it. Can be null.
@override final  String? secret;

/// Create a copy of Ownership
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OwnershipCopyWith<_Ownership> get copyWith => __$OwnershipCopyWithImpl<_Ownership>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OwnershipToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ownership&&const DeepCollectionEquality().equals(other._authorizedPublicKeys, _authorizedPublicKeys)&&(identical(other.secret, secret) || other.secret == secret));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_authorizedPublicKeys),secret);

@override
String toString() {
  return 'Ownership(authorizedPublicKeys: $authorizedPublicKeys, secret: $secret)';
}


}

/// @nodoc
abstract mixin class _$OwnershipCopyWith<$Res> implements $OwnershipCopyWith<$Res> {
  factory _$OwnershipCopyWith(_Ownership value, $Res Function(_Ownership) _then) = __$OwnershipCopyWithImpl;
@override @useResult
$Res call({
 List<AuthorizedKey> authorizedPublicKeys, String? secret
});




}
/// @nodoc
class __$OwnershipCopyWithImpl<$Res>
    implements _$OwnershipCopyWith<$Res> {
  __$OwnershipCopyWithImpl(this._self, this._then);

  final _Ownership _self;
  final $Res Function(_Ownership) _then;

/// Create a copy of Ownership
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? authorizedPublicKeys = null,Object? secret = freezed,}) {
  return _then(_Ownership(
authorizedPublicKeys: null == authorizedPublicKeys ? _self._authorizedPublicKeys : authorizedPublicKeys // ignore: cast_nullable_to_non_nullable
as List<AuthorizedKey>,secret: freezed == secret ? _self.secret : secret // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
