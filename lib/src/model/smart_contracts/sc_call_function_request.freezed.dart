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

 String get jsonrpc; String get method; int get id; SCCallFunctionParams get params;
/// Create a copy of SCCallFunctionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SCCallFunctionRequestCopyWith<SCCallFunctionRequest> get copyWith => _$SCCallFunctionRequestCopyWithImpl<SCCallFunctionRequest>(this as SCCallFunctionRequest, _$identity);

  /// Serializes this SCCallFunctionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SCCallFunctionRequest&&(identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc)&&(identical(other.method, method) || other.method == method)&&(identical(other.id, id) || other.id == id)&&(identical(other.params, params) || other.params == params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jsonrpc,method,id,params);

@override
String toString() {
  return 'SCCallFunctionRequest(jsonrpc: $jsonrpc, method: $method, id: $id, params: $params)';
}


}

/// @nodoc
abstract mixin class $SCCallFunctionRequestCopyWith<$Res>  {
  factory $SCCallFunctionRequestCopyWith(SCCallFunctionRequest value, $Res Function(SCCallFunctionRequest) _then) = _$SCCallFunctionRequestCopyWithImpl;
@useResult
$Res call({
 String jsonrpc, String method, int id, SCCallFunctionParams params
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
@pragma('vm:prefer-inline') @override $Res call({Object? jsonrpc = null,Object? method = null,Object? id = null,Object? params = null,}) {
  return _then(_self.copyWith(
jsonrpc: null == jsonrpc ? _self.jsonrpc : jsonrpc // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as SCCallFunctionParams,
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
  const _SCCallFunctionRequest({this.jsonrpc = '2.0', required this.method, this.id = 1, required this.params});
  factory _SCCallFunctionRequest.fromJson(Map<String, dynamic> json) => _$SCCallFunctionRequestFromJson(json);

@override@JsonKey() final  String jsonrpc;
@override final  String method;
@override@JsonKey() final  int id;
@override final  SCCallFunctionParams params;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SCCallFunctionRequest&&(identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc)&&(identical(other.method, method) || other.method == method)&&(identical(other.id, id) || other.id == id)&&(identical(other.params, params) || other.params == params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jsonrpc,method,id,params);

@override
String toString() {
  return 'SCCallFunctionRequest(jsonrpc: $jsonrpc, method: $method, id: $id, params: $params)';
}


}

/// @nodoc
abstract mixin class _$SCCallFunctionRequestCopyWith<$Res> implements $SCCallFunctionRequestCopyWith<$Res> {
  factory _$SCCallFunctionRequestCopyWith(_SCCallFunctionRequest value, $Res Function(_SCCallFunctionRequest) _then) = __$SCCallFunctionRequestCopyWithImpl;
@override @useResult
$Res call({
 String jsonrpc, String method, int id, SCCallFunctionParams params
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
@override @pragma('vm:prefer-inline') $Res call({Object? jsonrpc = null,Object? method = null,Object? id = null,Object? params = null,}) {
  return _then(_SCCallFunctionRequest(
jsonrpc: null == jsonrpc ? _self.jsonrpc : jsonrpc // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as SCCallFunctionParams,
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
