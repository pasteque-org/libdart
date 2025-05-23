// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'endpoint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Endpoint {

/// The IP address of the endpoint.
 String get ip;/// The port number of the endpoint.
 int get port;
/// Create a copy of Endpoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EndpointCopyWith<Endpoint> get copyWith => _$EndpointCopyWithImpl<Endpoint>(this as Endpoint, _$identity);

  /// Serializes this Endpoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Endpoint&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.port, port) || other.port == port));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ip,port);

@override
String toString() {
  return 'Endpoint(ip: $ip, port: $port)';
}


}

/// @nodoc
abstract mixin class $EndpointCopyWith<$Res>  {
  factory $EndpointCopyWith(Endpoint value, $Res Function(Endpoint) _then) = _$EndpointCopyWithImpl;
@useResult
$Res call({
 String ip, int port
});




}
/// @nodoc
class _$EndpointCopyWithImpl<$Res>
    implements $EndpointCopyWith<$Res> {
  _$EndpointCopyWithImpl(this._self, this._then);

  final Endpoint _self;
  final $Res Function(Endpoint) _then;

/// Create a copy of Endpoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ip = null,Object? port = null,}) {
  return _then(_self.copyWith(
ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,port: null == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Endpoint extends Endpoint {
  const _Endpoint({this.ip = '', this.port = 0}): super._();
  factory _Endpoint.fromJson(Map<String, dynamic> json) => _$EndpointFromJson(json);

/// The IP address of the endpoint.
@override@JsonKey() final  String ip;
/// The port number of the endpoint.
@override@JsonKey() final  int port;

/// Create a copy of Endpoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EndpointCopyWith<_Endpoint> get copyWith => __$EndpointCopyWithImpl<_Endpoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EndpointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Endpoint&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.port, port) || other.port == port));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ip,port);

@override
String toString() {
  return 'Endpoint(ip: $ip, port: $port)';
}


}

/// @nodoc
abstract mixin class _$EndpointCopyWith<$Res> implements $EndpointCopyWith<$Res> {
  factory _$EndpointCopyWith(_Endpoint value, $Res Function(_Endpoint) _then) = __$EndpointCopyWithImpl;
@override @useResult
$Res call({
 String ip, int port
});




}
/// @nodoc
class __$EndpointCopyWithImpl<$Res>
    implements _$EndpointCopyWith<$Res> {
  __$EndpointCopyWithImpl(this._self, this._then);

  final _Endpoint _self;
  final $Res Function(_Endpoint) _then;

/// Create a copy of Endpoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ip = null,Object? port = null,}) {
  return _then(_Endpoint(
ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,port: null == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
