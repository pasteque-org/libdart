// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sc_call_function_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SCCallFunctionRequest {

/// The name of the JSON-RPC method to be invoked.
 String get method;/// The parameters specific to the smart contract function call.
 SCCallFunctionParams get params;/// The JSON-RPC version. Typically "2.0".
 String get jsonrpc;/// A client-generated identifier for the request.
/// The server should include this ID in its response.
 int get id;
/// Create a copy of SCCallFunctionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SCCallFunctionRequestCopyWith<SCCallFunctionRequest> get copyWith => _$SCCallFunctionRequestCopyWithImpl<SCCallFunctionRequest>(this as SCCallFunctionRequest, _$identity);

  /// Serializes this SCCallFunctionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SCCallFunctionRequest&&(identical(other.method, method) || other.method == method)&&(identical(other.params, params) || other.params == params)&&(identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,method,params,jsonrpc,id);

@override
String toString() {
  return 'SCCallFunctionRequest(method: $method, params: $params, jsonrpc: $jsonrpc, id: $id)';
}


}

/// @nodoc
abstract mixin class $SCCallFunctionRequestCopyWith<$Res>  {
  factory $SCCallFunctionRequestCopyWith(SCCallFunctionRequest value, $Res Function(SCCallFunctionRequest) _then) = _$SCCallFunctionRequestCopyWithImpl;
@useResult
$Res call({
 String method, SCCallFunctionParams params, String jsonrpc, int id
});


$SCCallFunctionParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$SCCallFunctionRequestCopyWithImpl<$Res>
    implements $SCCallFunctionRequestCopyWith<$Res> {
  _$SCCallFunctionRequestCopyWithImpl(this._self, this._then);

  final SCCallFunctionRequest _self;
  final $Res Function(SCCallFunctionRequest) _then;

/// Create a copy of SCCallFunctionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? method = null,Object? params = null,Object? jsonrpc = null,Object? id = null,}) {
  return _then(_self.copyWith(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as SCCallFunctionParams,jsonrpc: null == jsonrpc ? _self.jsonrpc : jsonrpc // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of SCCallFunctionRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SCCallFunctionParamsCopyWith<$Res> get params {
  
  return $SCCallFunctionParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _SCCallFunctionRequest implements SCCallFunctionRequest {
  const _SCCallFunctionRequest({required this.method, required this.params, this.jsonrpc = '2.0', this.id = 1});
  factory _SCCallFunctionRequest.fromJson(Map<String, dynamic> json) => _$SCCallFunctionRequestFromJson(json);

/// The name of the JSON-RPC method to be invoked.
@override final  String method;
/// The parameters specific to the smart contract function call.
@override final  SCCallFunctionParams params;
/// The JSON-RPC version. Typically "2.0".
@override@JsonKey() final  String jsonrpc;
/// A client-generated identifier for the request.
/// The server should include this ID in its response.
@override@JsonKey() final  int id;

/// Create a copy of SCCallFunctionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SCCallFunctionRequestCopyWith<_SCCallFunctionRequest> get copyWith => __$SCCallFunctionRequestCopyWithImpl<_SCCallFunctionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SCCallFunctionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SCCallFunctionRequest&&(identical(other.method, method) || other.method == method)&&(identical(other.params, params) || other.params == params)&&(identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,method,params,jsonrpc,id);

@override
String toString() {
  return 'SCCallFunctionRequest(method: $method, params: $params, jsonrpc: $jsonrpc, id: $id)';
}


}

/// @nodoc
abstract mixin class _$SCCallFunctionRequestCopyWith<$Res> implements $SCCallFunctionRequestCopyWith<$Res> {
  factory _$SCCallFunctionRequestCopyWith(_SCCallFunctionRequest value, $Res Function(_SCCallFunctionRequest) _then) = __$SCCallFunctionRequestCopyWithImpl;
@override @useResult
$Res call({
 String method, SCCallFunctionParams params, String jsonrpc, int id
});


@override $SCCallFunctionParamsCopyWith<$Res> get params;

}
/// @nodoc
class __$SCCallFunctionRequestCopyWithImpl<$Res>
    implements _$SCCallFunctionRequestCopyWith<$Res> {
  __$SCCallFunctionRequestCopyWithImpl(this._self, this._then);

  final _SCCallFunctionRequest _self;
  final $Res Function(_SCCallFunctionRequest) _then;

/// Create a copy of SCCallFunctionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? method = null,Object? params = null,Object? jsonrpc = null,Object? id = null,}) {
  return _then(_SCCallFunctionRequest(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as SCCallFunctionParams,jsonrpc: null == jsonrpc ? _self.jsonrpc : jsonrpc // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of SCCallFunctionRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SCCallFunctionParamsCopyWith<$Res> get params {
  
  return $SCCallFunctionParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

// dart format on
