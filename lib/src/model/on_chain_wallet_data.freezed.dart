// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_chain_wallet_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnChainWalletData {

/// The encoded key that can be used (potentially after decryption with a user's master key)
/// to decrypt the [encryptedWallet]. This might be an encrypted symmetric key.
 String? get encodedWalletKey;/// The main wallet data, stored in an encrypted format on the blockchain.
 String? get encryptedWallet;
/// Create a copy of OnChainWalletData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnChainWalletDataCopyWith<OnChainWalletData> get copyWith => _$OnChainWalletDataCopyWithImpl<OnChainWalletData>(this as OnChainWalletData, _$identity);

  /// Serializes this OnChainWalletData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnChainWalletData&&(identical(other.encodedWalletKey, encodedWalletKey) || other.encodedWalletKey == encodedWalletKey)&&(identical(other.encryptedWallet, encryptedWallet) || other.encryptedWallet == encryptedWallet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,encodedWalletKey,encryptedWallet);

@override
String toString() {
  return 'OnChainWalletData(encodedWalletKey: $encodedWalletKey, encryptedWallet: $encryptedWallet)';
}


}

/// @nodoc
abstract mixin class $OnChainWalletDataCopyWith<$Res>  {
  factory $OnChainWalletDataCopyWith(OnChainWalletData value, $Res Function(OnChainWalletData) _then) = _$OnChainWalletDataCopyWithImpl;
@useResult
$Res call({
 String? encodedWalletKey, String? encryptedWallet
});




}
/// @nodoc
class _$OnChainWalletDataCopyWithImpl<$Res>
    implements $OnChainWalletDataCopyWith<$Res> {
  _$OnChainWalletDataCopyWithImpl(this._self, this._then);

  final OnChainWalletData _self;
  final $Res Function(OnChainWalletData) _then;

/// Create a copy of OnChainWalletData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? encodedWalletKey = freezed,Object? encryptedWallet = freezed,}) {
  return _then(_self.copyWith(
encodedWalletKey: freezed == encodedWalletKey ? _self.encodedWalletKey : encodedWalletKey // ignore: cast_nullable_to_non_nullable
as String?,encryptedWallet: freezed == encryptedWallet ? _self.encryptedWallet : encryptedWallet // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _OnChainWalletData extends OnChainWalletData {
  const _OnChainWalletData({this.encodedWalletKey, this.encryptedWallet}): super._();
  factory _OnChainWalletData.fromJson(Map<String, dynamic> json) => _$OnChainWalletDataFromJson(json);

/// The encoded key that can be used (potentially after decryption with a user's master key)
/// to decrypt the [encryptedWallet]. This might be an encrypted symmetric key.
@override final  String? encodedWalletKey;
/// The main wallet data, stored in an encrypted format on the blockchain.
@override final  String? encryptedWallet;

/// Create a copy of OnChainWalletData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnChainWalletDataCopyWith<_OnChainWalletData> get copyWith => __$OnChainWalletDataCopyWithImpl<_OnChainWalletData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OnChainWalletDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnChainWalletData&&(identical(other.encodedWalletKey, encodedWalletKey) || other.encodedWalletKey == encodedWalletKey)&&(identical(other.encryptedWallet, encryptedWallet) || other.encryptedWallet == encryptedWallet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,encodedWalletKey,encryptedWallet);

@override
String toString() {
  return 'OnChainWalletData(encodedWalletKey: $encodedWalletKey, encryptedWallet: $encryptedWallet)';
}


}

/// @nodoc
abstract mixin class _$OnChainWalletDataCopyWith<$Res> implements $OnChainWalletDataCopyWith<$Res> {
  factory _$OnChainWalletDataCopyWith(_OnChainWalletData value, $Res Function(_OnChainWalletData) _then) = __$OnChainWalletDataCopyWithImpl;
@override @useResult
$Res call({
 String? encodedWalletKey, String? encryptedWallet
});




}
/// @nodoc
class __$OnChainWalletDataCopyWithImpl<$Res>
    implements _$OnChainWalletDataCopyWith<$Res> {
  __$OnChainWalletDataCopyWithImpl(this._self, this._then);

  final _OnChainWalletData _self;
  final $Res Function(_OnChainWalletData) _then;

/// Create a copy of OnChainWalletData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? encodedWalletKey = freezed,Object? encryptedWallet = freezed,}) {
  return _then(_OnChainWalletData(
encodedWalletKey: freezed == encodedWalletKey ? _self.encodedWalletKey : encodedWalletKey // ignore: cast_nullable_to_non_nullable
as String?,encryptedWallet: freezed == encryptedWallet ? _self.encryptedWallet : encryptedWallet // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
