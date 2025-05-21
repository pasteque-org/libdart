// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Node {

/// Indicates if the node is currently authorized to participate in the network.
 bool? get authorized;/// Indicates if the node is currently available and reachable.
 bool? get available;/// The historical average availability of the node, often represented as a score or percentage.
 double? get averageAvailability;/// The first or initial public key associated with this node.
 String? get firstPublicKey;/// Geographical patch information, possibly indicating its physical or logical region.
 String? get geoPatch;/// The IP address of the node.
 String? get ip;/// The last known or current public key for this node.
 String? get lastPublicKey;/// Network patch information, which might relate to its subnet or specific network segment.
 String? get networkPatch;/// The network port on which the node provides its services.
 int? get port;/// The Archethic address designated to receive rewards for this node's participation.
 String? get rewardAddress;/// The date (timestamp) when the node was initially enrolled in the network.
 int? get enrollmentDate;/// The date (timestamp) when the node was last authorized or its authorization status was confirmed.
 int? get authorizationDate;
/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NodeCopyWith<Node> get copyWith => _$NodeCopyWithImpl<Node>(this as Node, _$identity);

  /// Serializes this Node to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Node&&(identical(other.authorized, authorized) || other.authorized == authorized)&&(identical(other.available, available) || other.available == available)&&(identical(other.averageAvailability, averageAvailability) || other.averageAvailability == averageAvailability)&&(identical(other.firstPublicKey, firstPublicKey) || other.firstPublicKey == firstPublicKey)&&(identical(other.geoPatch, geoPatch) || other.geoPatch == geoPatch)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.lastPublicKey, lastPublicKey) || other.lastPublicKey == lastPublicKey)&&(identical(other.networkPatch, networkPatch) || other.networkPatch == networkPatch)&&(identical(other.port, port) || other.port == port)&&(identical(other.rewardAddress, rewardAddress) || other.rewardAddress == rewardAddress)&&(identical(other.enrollmentDate, enrollmentDate) || other.enrollmentDate == enrollmentDate)&&(identical(other.authorizationDate, authorizationDate) || other.authorizationDate == authorizationDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authorized,available,averageAvailability,firstPublicKey,geoPatch,ip,lastPublicKey,networkPatch,port,rewardAddress,enrollmentDate,authorizationDate);

@override
String toString() {
  return 'Node(authorized: $authorized, available: $available, averageAvailability: $averageAvailability, firstPublicKey: $firstPublicKey, geoPatch: $geoPatch, ip: $ip, lastPublicKey: $lastPublicKey, networkPatch: $networkPatch, port: $port, rewardAddress: $rewardAddress, enrollmentDate: $enrollmentDate, authorizationDate: $authorizationDate)';
}


}

/// @nodoc
abstract mixin class $NodeCopyWith<$Res>  {
  factory $NodeCopyWith(Node value, $Res Function(Node) _then) = _$NodeCopyWithImpl;
@useResult
$Res call({
 bool? authorized, bool? available, double? averageAvailability, String? firstPublicKey, String? geoPatch, String? ip, String? lastPublicKey, String? networkPatch, int? port, String? rewardAddress, int? enrollmentDate, int? authorizationDate
});




}
/// @nodoc
class _$NodeCopyWithImpl<$Res>
    implements $NodeCopyWith<$Res> {
  _$NodeCopyWithImpl(this._self, this._then);

  final Node _self;
  final $Res Function(Node) _then;

/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? authorized = freezed,Object? available = freezed,Object? averageAvailability = freezed,Object? firstPublicKey = freezed,Object? geoPatch = freezed,Object? ip = freezed,Object? lastPublicKey = freezed,Object? networkPatch = freezed,Object? port = freezed,Object? rewardAddress = freezed,Object? enrollmentDate = freezed,Object? authorizationDate = freezed,}) {
  return _then(_self.copyWith(
authorized: freezed == authorized ? _self.authorized : authorized // ignore: cast_nullable_to_non_nullable
as bool?,available: freezed == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool?,averageAvailability: freezed == averageAvailability ? _self.averageAvailability : averageAvailability // ignore: cast_nullable_to_non_nullable
as double?,firstPublicKey: freezed == firstPublicKey ? _self.firstPublicKey : firstPublicKey // ignore: cast_nullable_to_non_nullable
as String?,geoPatch: freezed == geoPatch ? _self.geoPatch : geoPatch // ignore: cast_nullable_to_non_nullable
as String?,ip: freezed == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String?,lastPublicKey: freezed == lastPublicKey ? _self.lastPublicKey : lastPublicKey // ignore: cast_nullable_to_non_nullable
as String?,networkPatch: freezed == networkPatch ? _self.networkPatch : networkPatch // ignore: cast_nullable_to_non_nullable
as String?,port: freezed == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int?,rewardAddress: freezed == rewardAddress ? _self.rewardAddress : rewardAddress // ignore: cast_nullable_to_non_nullable
as String?,enrollmentDate: freezed == enrollmentDate ? _self.enrollmentDate : enrollmentDate // ignore: cast_nullable_to_non_nullable
as int?,authorizationDate: freezed == authorizationDate ? _self.authorizationDate : authorizationDate // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Node extends Node {
  const _Node({this.authorized, this.available, this.averageAvailability, this.firstPublicKey, this.geoPatch, this.ip, this.lastPublicKey, this.networkPatch, this.port, this.rewardAddress, this.enrollmentDate, this.authorizationDate}): super._();
  factory _Node.fromJson(Map<String, dynamic> json) => _$NodeFromJson(json);

/// Indicates if the node is currently authorized to participate in the network.
@override final  bool? authorized;
/// Indicates if the node is currently available and reachable.
@override final  bool? available;
/// The historical average availability of the node, often represented as a score or percentage.
@override final  double? averageAvailability;
/// The first or initial public key associated with this node.
@override final  String? firstPublicKey;
/// Geographical patch information, possibly indicating its physical or logical region.
@override final  String? geoPatch;
/// The IP address of the node.
@override final  String? ip;
/// The last known or current public key for this node.
@override final  String? lastPublicKey;
/// Network patch information, which might relate to its subnet or specific network segment.
@override final  String? networkPatch;
/// The network port on which the node provides its services.
@override final  int? port;
/// The Archethic address designated to receive rewards for this node's participation.
@override final  String? rewardAddress;
/// The date (timestamp) when the node was initially enrolled in the network.
@override final  int? enrollmentDate;
/// The date (timestamp) when the node was last authorized or its authorization status was confirmed.
@override final  int? authorizationDate;

/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NodeCopyWith<_Node> get copyWith => __$NodeCopyWithImpl<_Node>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Node&&(identical(other.authorized, authorized) || other.authorized == authorized)&&(identical(other.available, available) || other.available == available)&&(identical(other.averageAvailability, averageAvailability) || other.averageAvailability == averageAvailability)&&(identical(other.firstPublicKey, firstPublicKey) || other.firstPublicKey == firstPublicKey)&&(identical(other.geoPatch, geoPatch) || other.geoPatch == geoPatch)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.lastPublicKey, lastPublicKey) || other.lastPublicKey == lastPublicKey)&&(identical(other.networkPatch, networkPatch) || other.networkPatch == networkPatch)&&(identical(other.port, port) || other.port == port)&&(identical(other.rewardAddress, rewardAddress) || other.rewardAddress == rewardAddress)&&(identical(other.enrollmentDate, enrollmentDate) || other.enrollmentDate == enrollmentDate)&&(identical(other.authorizationDate, authorizationDate) || other.authorizationDate == authorizationDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authorized,available,averageAvailability,firstPublicKey,geoPatch,ip,lastPublicKey,networkPatch,port,rewardAddress,enrollmentDate,authorizationDate);

@override
String toString() {
  return 'Node(authorized: $authorized, available: $available, averageAvailability: $averageAvailability, firstPublicKey: $firstPublicKey, geoPatch: $geoPatch, ip: $ip, lastPublicKey: $lastPublicKey, networkPatch: $networkPatch, port: $port, rewardAddress: $rewardAddress, enrollmentDate: $enrollmentDate, authorizationDate: $authorizationDate)';
}


}

/// @nodoc
abstract mixin class _$NodeCopyWith<$Res> implements $NodeCopyWith<$Res> {
  factory _$NodeCopyWith(_Node value, $Res Function(_Node) _then) = __$NodeCopyWithImpl;
@override @useResult
$Res call({
 bool? authorized, bool? available, double? averageAvailability, String? firstPublicKey, String? geoPatch, String? ip, String? lastPublicKey, String? networkPatch, int? port, String? rewardAddress, int? enrollmentDate, int? authorizationDate
});




}
/// @nodoc
class __$NodeCopyWithImpl<$Res>
    implements _$NodeCopyWith<$Res> {
  __$NodeCopyWithImpl(this._self, this._then);

  final _Node _self;
  final $Res Function(_Node) _then;

/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? authorized = freezed,Object? available = freezed,Object? averageAvailability = freezed,Object? firstPublicKey = freezed,Object? geoPatch = freezed,Object? ip = freezed,Object? lastPublicKey = freezed,Object? networkPatch = freezed,Object? port = freezed,Object? rewardAddress = freezed,Object? enrollmentDate = freezed,Object? authorizationDate = freezed,}) {
  return _then(_Node(
authorized: freezed == authorized ? _self.authorized : authorized // ignore: cast_nullable_to_non_nullable
as bool?,available: freezed == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool?,averageAvailability: freezed == averageAvailability ? _self.averageAvailability : averageAvailability // ignore: cast_nullable_to_non_nullable
as double?,firstPublicKey: freezed == firstPublicKey ? _self.firstPublicKey : firstPublicKey // ignore: cast_nullable_to_non_nullable
as String?,geoPatch: freezed == geoPatch ? _self.geoPatch : geoPatch // ignore: cast_nullable_to_non_nullable
as String?,ip: freezed == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String?,lastPublicKey: freezed == lastPublicKey ? _self.lastPublicKey : lastPublicKey // ignore: cast_nullable_to_non_nullable
as String?,networkPatch: freezed == networkPatch ? _self.networkPatch : networkPatch // ignore: cast_nullable_to_non_nullable
as String?,port: freezed == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int?,rewardAddress: freezed == rewardAddress ? _self.rewardAddress : rewardAddress // ignore: cast_nullable_to_non_nullable
as String?,enrollmentDate: freezed == enrollmentDate ? _self.enrollmentDate : enrollmentDate // ignore: cast_nullable_to_non_nullable
as int?,authorizationDate: freezed == authorizationDate ? _self.authorizationDate : authorizationDate // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
