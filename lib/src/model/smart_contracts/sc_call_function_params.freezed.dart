// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sc_call_function_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SCCallFunctionParams {

 String get contract; String get function; List<dynamic> get args;@JsonKey(name: 'resolve_last') bool get resolveLast;
/// Create a copy of SCCallFunctionParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SCCallFunctionParamsCopyWith<SCCallFunctionParams> get copyWith => _$SCCallFunctionParamsCopyWithImpl<SCCallFunctionParams>(this as SCCallFunctionParams, _$identity);

  /// Serializes this SCCallFunctionParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SCCallFunctionParams&&(identical(other.contract, contract) || other.contract == contract)&&(identical(other.function, function) || other.function == function)&&const DeepCollectionEquality().equals(other.args, args)&&(identical(other.resolveLast, resolveLast) || other.resolveLast == resolveLast));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contract,function,const DeepCollectionEquality().hash(args),resolveLast);

@override
String toString() {
  return 'SCCallFunctionParams(contract: $contract, function: $function, args: $args, resolveLast: $resolveLast)';
}


}

/// @nodoc
abstract mixin class $SCCallFunctionParamsCopyWith<$Res>  {
  factory $SCCallFunctionParamsCopyWith(SCCallFunctionParams value, $Res Function(SCCallFunctionParams) _then) = _$SCCallFunctionParamsCopyWithImpl;
@useResult
$Res call({
 String contract, String function, List<dynamic> args,@JsonKey(name: 'resolve_last') bool resolveLast
});




}
/// @nodoc
class _$SCCallFunctionParamsCopyWithImpl<$Res>
    implements $SCCallFunctionParamsCopyWith<$Res> {
  _$SCCallFunctionParamsCopyWithImpl(this._self, this._then);

  final SCCallFunctionParams _self;
  final $Res Function(SCCallFunctionParams) _then;

/// Create a copy of SCCallFunctionParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contract = null,Object? function = null,Object? args = null,Object? resolveLast = null,}) {
  return _then(_self.copyWith(
contract: null == contract ? _self.contract : contract // ignore: cast_nullable_to_non_nullable
as String,function: null == function ? _self.function : function // ignore: cast_nullable_to_non_nullable
as String,args: null == args ? _self.args : args // ignore: cast_nullable_to_non_nullable
as List<dynamic>,resolveLast: null == resolveLast ? _self.resolveLast : resolveLast // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SCCallFunctionParams implements SCCallFunctionParams {
  const _SCCallFunctionParams({required this.contract, required this.function, required final  List<dynamic> args, @JsonKey(name: 'resolve_last') this.resolveLast = true}): _args = args;
  factory _SCCallFunctionParams.fromJson(Map<String, dynamic> json) => _$SCCallFunctionParamsFromJson(json);

@override final  String contract;
@override final  String function;
 final  List<dynamic> _args;
@override List<dynamic> get args {
  if (_args is EqualUnmodifiableListView) return _args;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_args);
}

@override@JsonKey(name: 'resolve_last') final  bool resolveLast;

/// Create a copy of SCCallFunctionParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SCCallFunctionParamsCopyWith<_SCCallFunctionParams> get copyWith => __$SCCallFunctionParamsCopyWithImpl<_SCCallFunctionParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SCCallFunctionParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SCCallFunctionParams&&(identical(other.contract, contract) || other.contract == contract)&&(identical(other.function, function) || other.function == function)&&const DeepCollectionEquality().equals(other._args, _args)&&(identical(other.resolveLast, resolveLast) || other.resolveLast == resolveLast));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contract,function,const DeepCollectionEquality().hash(_args),resolveLast);

@override
String toString() {
  return 'SCCallFunctionParams(contract: $contract, function: $function, args: $args, resolveLast: $resolveLast)';
}


}

/// @nodoc
abstract mixin class _$SCCallFunctionParamsCopyWith<$Res> implements $SCCallFunctionParamsCopyWith<$Res> {
  factory _$SCCallFunctionParamsCopyWith(_SCCallFunctionParams value, $Res Function(_SCCallFunctionParams) _then) = __$SCCallFunctionParamsCopyWithImpl;
@override @useResult
$Res call({
 String contract, String function, List<dynamic> args,@JsonKey(name: 'resolve_last') bool resolveLast
});




}
/// @nodoc
class __$SCCallFunctionParamsCopyWithImpl<$Res>
    implements _$SCCallFunctionParamsCopyWith<$Res> {
  __$SCCallFunctionParamsCopyWithImpl(this._self, this._then);

  final _SCCallFunctionParams _self;
  final $Res Function(_SCCallFunctionParams) _then;

/// Create a copy of SCCallFunctionParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contract = null,Object? function = null,Object? args = null,Object? resolveLast = null,}) {
  return _then(_SCCallFunctionParams(
contract: null == contract ? _self.contract : contract // ignore: cast_nullable_to_non_nullable
as String,function: null == function ? _self.function : function // ignore: cast_nullable_to_non_nullable
as String,args: null == args ? _self._args : args // ignore: cast_nullable_to_non_nullable
as List<dynamic>,resolveLast: null == resolveLast ? _self.resolveLast : resolveLast // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
