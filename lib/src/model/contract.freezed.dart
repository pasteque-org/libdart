// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContractManifest {

 WasmABI get abi;
/// Create a copy of ContractManifest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContractManifestCopyWith<ContractManifest> get copyWith => _$ContractManifestCopyWithImpl<ContractManifest>(this as ContractManifest, _$identity);

  /// Serializes this ContractManifest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContractManifest&&(identical(other.abi, abi) || other.abi == abi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,abi);

@override
String toString() {
  return 'ContractManifest(abi: $abi)';
}


}

/// @nodoc
abstract mixin class $ContractManifestCopyWith<$Res>  {
  factory $ContractManifestCopyWith(ContractManifest value, $Res Function(ContractManifest) _then) = _$ContractManifestCopyWithImpl;
@useResult
$Res call({
 WasmABI abi
});


$WasmABICopyWith<$Res> get abi;

}
/// @nodoc
class _$ContractManifestCopyWithImpl<$Res>
    implements $ContractManifestCopyWith<$Res> {
  _$ContractManifestCopyWithImpl(this._self, this._then);

  final ContractManifest _self;
  final $Res Function(ContractManifest) _then;

/// Create a copy of ContractManifest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? abi = null,}) {
  return _then(_self.copyWith(
abi: null == abi ? _self.abi : abi // ignore: cast_nullable_to_non_nullable
as WasmABI,
  ));
}
/// Create a copy of ContractManifest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WasmABICopyWith<$Res> get abi {
  
  return $WasmABICopyWith<$Res>(_self.abi, (value) {
    return _then(_self.copyWith(abi: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ContractManifest implements ContractManifest {
  const _ContractManifest({required this.abi});
  factory _ContractManifest.fromJson(Map<String, dynamic> json) => _$ContractManifestFromJson(json);

@override final  WasmABI abi;

/// Create a copy of ContractManifest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContractManifestCopyWith<_ContractManifest> get copyWith => __$ContractManifestCopyWithImpl<_ContractManifest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContractManifestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContractManifest&&(identical(other.abi, abi) || other.abi == abi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,abi);

@override
String toString() {
  return 'ContractManifest(abi: $abi)';
}


}

/// @nodoc
abstract mixin class _$ContractManifestCopyWith<$Res> implements $ContractManifestCopyWith<$Res> {
  factory _$ContractManifestCopyWith(_ContractManifest value, $Res Function(_ContractManifest) _then) = __$ContractManifestCopyWithImpl;
@override @useResult
$Res call({
 WasmABI abi
});


@override $WasmABICopyWith<$Res> get abi;

}
/// @nodoc
class __$ContractManifestCopyWithImpl<$Res>
    implements _$ContractManifestCopyWith<$Res> {
  __$ContractManifestCopyWithImpl(this._self, this._then);

  final _ContractManifest _self;
  final $Res Function(_ContractManifest) _then;

/// Create a copy of ContractManifest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? abi = null,}) {
  return _then(_ContractManifest(
abi: null == abi ? _self.abi : abi // ignore: cast_nullable_to_non_nullable
as WasmABI,
  ));
}

/// Create a copy of ContractManifest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WasmABICopyWith<$Res> get abi {
  
  return $WasmABICopyWith<$Res>(_self.abi, (value) {
    return _then(_self.copyWith(abi: value));
  });
}
}


/// @nodoc
mixin _$WasmABI {

 Map<String, String> get state; Map<String, WASMFunctionABI> get functions;
/// Create a copy of WasmABI
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WasmABICopyWith<WasmABI> get copyWith => _$WasmABICopyWithImpl<WasmABI>(this as WasmABI, _$identity);

  /// Serializes this WasmABI to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WasmABI&&const DeepCollectionEquality().equals(other.state, state)&&const DeepCollectionEquality().equals(other.functions, functions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(state),const DeepCollectionEquality().hash(functions));

@override
String toString() {
  return 'WasmABI(state: $state, functions: $functions)';
}


}

/// @nodoc
abstract mixin class $WasmABICopyWith<$Res>  {
  factory $WasmABICopyWith(WasmABI value, $Res Function(WasmABI) _then) = _$WasmABICopyWithImpl;
@useResult
$Res call({
 Map<String, String> state, Map<String, WASMFunctionABI> functions
});




}
/// @nodoc
class _$WasmABICopyWithImpl<$Res>
    implements $WasmABICopyWith<$Res> {
  _$WasmABICopyWithImpl(this._self, this._then);

  final WasmABI _self;
  final $Res Function(WasmABI) _then;

/// Create a copy of WasmABI
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? state = null,Object? functions = null,}) {
  return _then(_self.copyWith(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as Map<String, String>,functions: null == functions ? _self.functions : functions // ignore: cast_nullable_to_non_nullable
as Map<String, WASMFunctionABI>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WasmABI implements WasmABI {
  const _WasmABI({required final  Map<String, String> state, required final  Map<String, WASMFunctionABI> functions}): _state = state,_functions = functions;
  factory _WasmABI.fromJson(Map<String, dynamic> json) => _$WasmABIFromJson(json);

 final  Map<String, String> _state;
@override Map<String, String> get state {
  if (_state is EqualUnmodifiableMapView) return _state;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_state);
}

 final  Map<String, WASMFunctionABI> _functions;
@override Map<String, WASMFunctionABI> get functions {
  if (_functions is EqualUnmodifiableMapView) return _functions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_functions);
}


/// Create a copy of WasmABI
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WasmABICopyWith<_WasmABI> get copyWith => __$WasmABICopyWithImpl<_WasmABI>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WasmABIToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WasmABI&&const DeepCollectionEquality().equals(other._state, _state)&&const DeepCollectionEquality().equals(other._functions, _functions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_state),const DeepCollectionEquality().hash(_functions));

@override
String toString() {
  return 'WasmABI(state: $state, functions: $functions)';
}


}

/// @nodoc
abstract mixin class _$WasmABICopyWith<$Res> implements $WasmABICopyWith<$Res> {
  factory _$WasmABICopyWith(_WasmABI value, $Res Function(_WasmABI) _then) = __$WasmABICopyWithImpl;
@override @useResult
$Res call({
 Map<String, String> state, Map<String, WASMFunctionABI> functions
});




}
/// @nodoc
class __$WasmABICopyWithImpl<$Res>
    implements _$WasmABICopyWith<$Res> {
  __$WasmABICopyWithImpl(this._self, this._then);

  final _WasmABI _self;
  final $Res Function(_WasmABI) _then;

/// Create a copy of WasmABI
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? state = null,Object? functions = null,}) {
  return _then(_WasmABI(
state: null == state ? _self._state : state // ignore: cast_nullable_to_non_nullable
as Map<String, String>,functions: null == functions ? _self._functions : functions // ignore: cast_nullable_to_non_nullable
as Map<String, WASMFunctionABI>,
  ));
}


}


/// @nodoc
mixin _$WASMFunctionABI {

 String get type; String? get triggerType; Map<String, dynamic> get input;
/// Create a copy of WASMFunctionABI
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WASMFunctionABICopyWith<WASMFunctionABI> get copyWith => _$WASMFunctionABICopyWithImpl<WASMFunctionABI>(this as WASMFunctionABI, _$identity);

  /// Serializes this WASMFunctionABI to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WASMFunctionABI&&(identical(other.type, type) || other.type == type)&&(identical(other.triggerType, triggerType) || other.triggerType == triggerType)&&const DeepCollectionEquality().equals(other.input, input));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,triggerType,const DeepCollectionEquality().hash(input));

@override
String toString() {
  return 'WASMFunctionABI(type: $type, triggerType: $triggerType, input: $input)';
}


}

/// @nodoc
abstract mixin class $WASMFunctionABICopyWith<$Res>  {
  factory $WASMFunctionABICopyWith(WASMFunctionABI value, $Res Function(WASMFunctionABI) _then) = _$WASMFunctionABICopyWithImpl;
@useResult
$Res call({
 String type, String? triggerType, Map<String, dynamic> input
});




}
/// @nodoc
class _$WASMFunctionABICopyWithImpl<$Res>
    implements $WASMFunctionABICopyWith<$Res> {
  _$WASMFunctionABICopyWithImpl(this._self, this._then);

  final WASMFunctionABI _self;
  final $Res Function(WASMFunctionABI) _then;

/// Create a copy of WASMFunctionABI
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? triggerType = freezed,Object? input = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,triggerType: freezed == triggerType ? _self.triggerType : triggerType // ignore: cast_nullable_to_non_nullable
as String?,input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WASMFunctionABI implements WASMFunctionABI {
  const _WASMFunctionABI({required this.type, this.triggerType, required final  Map<String, dynamic> input}): _input = input;
  factory _WASMFunctionABI.fromJson(Map<String, dynamic> json) => _$WASMFunctionABIFromJson(json);

@override final  String type;
@override final  String? triggerType;
 final  Map<String, dynamic> _input;
@override Map<String, dynamic> get input {
  if (_input is EqualUnmodifiableMapView) return _input;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_input);
}


/// Create a copy of WASMFunctionABI
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WASMFunctionABICopyWith<_WASMFunctionABI> get copyWith => __$WASMFunctionABICopyWithImpl<_WASMFunctionABI>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WASMFunctionABIToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WASMFunctionABI&&(identical(other.type, type) || other.type == type)&&(identical(other.triggerType, triggerType) || other.triggerType == triggerType)&&const DeepCollectionEquality().equals(other._input, _input));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,triggerType,const DeepCollectionEquality().hash(_input));

@override
String toString() {
  return 'WASMFunctionABI(type: $type, triggerType: $triggerType, input: $input)';
}


}

/// @nodoc
abstract mixin class _$WASMFunctionABICopyWith<$Res> implements $WASMFunctionABICopyWith<$Res> {
  factory _$WASMFunctionABICopyWith(_WASMFunctionABI value, $Res Function(_WASMFunctionABI) _then) = __$WASMFunctionABICopyWithImpl;
@override @useResult
$Res call({
 String type, String? triggerType, Map<String, dynamic> input
});




}
/// @nodoc
class __$WASMFunctionABICopyWithImpl<$Res>
    implements _$WASMFunctionABICopyWith<$Res> {
  __$WASMFunctionABICopyWithImpl(this._self, this._then);

  final _WASMFunctionABI _self;
  final $Res Function(_WASMFunctionABI) _then;

/// Create a copy of WASMFunctionABI
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? triggerType = freezed,Object? input = null,}) {
  return _then(_WASMFunctionABI(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,triggerType: freezed == triggerType ? _self.triggerType : triggerType // ignore: cast_nullable_to_non_nullable
as String?,input: null == input ? _self._input : input // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$ContractAction {

 String get name; List<String> get parameters;
/// Create a copy of ContractAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContractActionCopyWith<ContractAction> get copyWith => _$ContractActionCopyWithImpl<ContractAction>(this as ContractAction, _$identity);

  /// Serializes this ContractAction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContractAction&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.parameters, parameters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(parameters));

@override
String toString() {
  return 'ContractAction(name: $name, parameters: $parameters)';
}


}

/// @nodoc
abstract mixin class $ContractActionCopyWith<$Res>  {
  factory $ContractActionCopyWith(ContractAction value, $Res Function(ContractAction) _then) = _$ContractActionCopyWithImpl;
@useResult
$Res call({
 String name, List<String> parameters
});




}
/// @nodoc
class _$ContractActionCopyWithImpl<$Res>
    implements $ContractActionCopyWith<$Res> {
  _$ContractActionCopyWithImpl(this._self, this._then);

  final ContractAction _self;
  final $Res Function(ContractAction) _then;

/// Create a copy of ContractAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? parameters = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,parameters: null == parameters ? _self.parameters : parameters // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ContractAction implements ContractAction {
  const _ContractAction({required this.name, required final  List<String> parameters}): _parameters = parameters;
  factory _ContractAction.fromJson(Map<String, dynamic> json) => _$ContractActionFromJson(json);

@override final  String name;
 final  List<String> _parameters;
@override List<String> get parameters {
  if (_parameters is EqualUnmodifiableListView) return _parameters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parameters);
}


/// Create a copy of ContractAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContractActionCopyWith<_ContractAction> get copyWith => __$ContractActionCopyWithImpl<_ContractAction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContractActionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContractAction&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._parameters, _parameters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_parameters));

@override
String toString() {
  return 'ContractAction(name: $name, parameters: $parameters)';
}


}

/// @nodoc
abstract mixin class _$ContractActionCopyWith<$Res> implements $ContractActionCopyWith<$Res> {
  factory _$ContractActionCopyWith(_ContractAction value, $Res Function(_ContractAction) _then) = __$ContractActionCopyWithImpl;
@override @useResult
$Res call({
 String name, List<String> parameters
});




}
/// @nodoc
class __$ContractActionCopyWithImpl<$Res>
    implements _$ContractActionCopyWith<$Res> {
  __$ContractActionCopyWithImpl(this._self, this._then);

  final _ContractAction _self;
  final $Res Function(_ContractAction) _then;

/// Create a copy of ContractAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? parameters = null,}) {
  return _then(_ContractAction(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,parameters: null == parameters ? _self._parameters : parameters // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$Contract {

 String? get bytecode; ContractManifest get manifest;
/// Create a copy of Contract
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContractCopyWith<Contract> get copyWith => _$ContractCopyWithImpl<Contract>(this as Contract, _$identity);

  /// Serializes this Contract to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Contract&&(identical(other.bytecode, bytecode) || other.bytecode == bytecode)&&(identical(other.manifest, manifest) || other.manifest == manifest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bytecode,manifest);

@override
String toString() {
  return 'Contract(bytecode: $bytecode, manifest: $manifest)';
}


}

/// @nodoc
abstract mixin class $ContractCopyWith<$Res>  {
  factory $ContractCopyWith(Contract value, $Res Function(Contract) _then) = _$ContractCopyWithImpl;
@useResult
$Res call({
 String? bytecode, ContractManifest manifest
});


$ContractManifestCopyWith<$Res> get manifest;

}
/// @nodoc
class _$ContractCopyWithImpl<$Res>
    implements $ContractCopyWith<$Res> {
  _$ContractCopyWithImpl(this._self, this._then);

  final Contract _self;
  final $Res Function(Contract) _then;

/// Create a copy of Contract
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytecode = freezed,Object? manifest = null,}) {
  return _then(_self.copyWith(
bytecode: freezed == bytecode ? _self.bytecode : bytecode // ignore: cast_nullable_to_non_nullable
as String?,manifest: null == manifest ? _self.manifest : manifest // ignore: cast_nullable_to_non_nullable
as ContractManifest,
  ));
}
/// Create a copy of Contract
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContractManifestCopyWith<$Res> get manifest {
  
  return $ContractManifestCopyWith<$Res>(_self.manifest, (value) {
    return _then(_self.copyWith(manifest: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Contract extends Contract {
  const _Contract({required this.bytecode, required this.manifest}): super._();
  factory _Contract.fromJson(Map<String, dynamic> json) => _$ContractFromJson(json);

@override final  String? bytecode;
@override final  ContractManifest manifest;

/// Create a copy of Contract
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContractCopyWith<_Contract> get copyWith => __$ContractCopyWithImpl<_Contract>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContractToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Contract&&(identical(other.bytecode, bytecode) || other.bytecode == bytecode)&&(identical(other.manifest, manifest) || other.manifest == manifest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bytecode,manifest);

@override
String toString() {
  return 'Contract(bytecode: $bytecode, manifest: $manifest)';
}


}

/// @nodoc
abstract mixin class _$ContractCopyWith<$Res> implements $ContractCopyWith<$Res> {
  factory _$ContractCopyWith(_Contract value, $Res Function(_Contract) _then) = __$ContractCopyWithImpl;
@override @useResult
$Res call({
 String? bytecode, ContractManifest manifest
});


@override $ContractManifestCopyWith<$Res> get manifest;

}
/// @nodoc
class __$ContractCopyWithImpl<$Res>
    implements _$ContractCopyWith<$Res> {
  __$ContractCopyWithImpl(this._self, this._then);

  final _Contract _self;
  final $Res Function(_Contract) _then;

/// Create a copy of Contract
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bytecode = freezed,Object? manifest = null,}) {
  return _then(_Contract(
bytecode: freezed == bytecode ? _self.bytecode : bytecode // ignore: cast_nullable_to_non_nullable
as String?,manifest: null == manifest ? _self.manifest : manifest // ignore: cast_nullable_to_non_nullable
as ContractManifest,
  ));
}

/// Create a copy of Contract
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContractManifestCopyWith<$Res> get manifest {
  
  return $ContractManifestCopyWith<$Res>(_self.manifest, (value) {
    return _then(_self.copyWith(manifest: value));
  });
}
}

// dart format on
