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

/// A map defining the contract's state variables and their types.
/// The key is the state variable name, and the value is its type (e.g., "uint64", "string").
 Map<String, String> get state;/// A map defining the contract's functions.
/// The key is the function name, and the value is a [WASMFunctionABI] object.
 Map<String, WASMFunctionABI> get functions;
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

/// A map defining the contract's state variables and their types.
/// The key is the state variable name, and the value is its type (e.g., "uint64", "string").
 final  Map<String, String> _state;
/// A map defining the contract's state variables and their types.
/// The key is the state variable name, and the value is its type (e.g., "uint64", "string").
@override Map<String, String> get state {
  if (_state is EqualUnmodifiableMapView) return _state;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_state);
}

/// A map defining the contract's functions.
/// The key is the function name, and the value is a [WASMFunctionABI] object.
 final  Map<String, WASMFunctionABI> _functions;
/// A map defining the contract's functions.
/// The key is the function name, and the value is a [WASMFunctionABI] object.
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

/// The type of the function, e.g., "action" for state-changing functions, "view" for read-only functions.
 String get type;/// A map defining the input parameters of the function and their types.
/// The key is the parameter name, and the value can be its type or a more complex structure.
 Map<String, dynamic> get input;/// Specifies how this function is triggered, e.g., "transaction" if it's callable via a transaction.
 String? get triggerType;
/// Create a copy of WASMFunctionABI
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WASMFunctionABICopyWith<WASMFunctionABI> get copyWith => _$WASMFunctionABICopyWithImpl<WASMFunctionABI>(this as WASMFunctionABI, _$identity);

  /// Serializes this WASMFunctionABI to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WASMFunctionABI&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.input, input)&&(identical(other.triggerType, triggerType) || other.triggerType == triggerType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(input),triggerType);

@override
String toString() {
  return 'WASMFunctionABI(type: $type, input: $input, triggerType: $triggerType)';
}


}

/// @nodoc
abstract mixin class $WASMFunctionABICopyWith<$Res>  {
  factory $WASMFunctionABICopyWith(WASMFunctionABI value, $Res Function(WASMFunctionABI) _then) = _$WASMFunctionABICopyWithImpl;
@useResult
$Res call({
 String type, Map<String, dynamic> input, String? triggerType
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
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? input = null,Object? triggerType = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,triggerType: freezed == triggerType ? _self.triggerType : triggerType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WASMFunctionABI implements WASMFunctionABI {
  const _WASMFunctionABI({required this.type, required final  Map<String, dynamic> input, this.triggerType}): _input = input;
  factory _WASMFunctionABI.fromJson(Map<String, dynamic> json) => _$WASMFunctionABIFromJson(json);

/// The type of the function, e.g., "action" for state-changing functions, "view" for read-only functions.
@override final  String type;
/// A map defining the input parameters of the function and their types.
/// The key is the parameter name, and the value can be its type or a more complex structure.
 final  Map<String, dynamic> _input;
/// A map defining the input parameters of the function and their types.
/// The key is the parameter name, and the value can be its type or a more complex structure.
@override Map<String, dynamic> get input {
  if (_input is EqualUnmodifiableMapView) return _input;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_input);
}

/// Specifies how this function is triggered, e.g., "transaction" if it's callable via a transaction.
@override final  String? triggerType;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WASMFunctionABI&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._input, _input)&&(identical(other.triggerType, triggerType) || other.triggerType == triggerType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(_input),triggerType);

@override
String toString() {
  return 'WASMFunctionABI(type: $type, input: $input, triggerType: $triggerType)';
}


}

/// @nodoc
abstract mixin class _$WASMFunctionABICopyWith<$Res> implements $WASMFunctionABICopyWith<$Res> {
  factory _$WASMFunctionABICopyWith(_WASMFunctionABI value, $Res Function(_WASMFunctionABI) _then) = __$WASMFunctionABICopyWithImpl;
@override @useResult
$Res call({
 String type, Map<String, dynamic> input, String? triggerType
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
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? input = null,Object? triggerType = freezed,}) {
  return _then(_WASMFunctionABI(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,input: null == input ? _self._input : input // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,triggerType: freezed == triggerType ? _self.triggerType : triggerType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ContractAction {

/// The name of the contract function.
 String get name;/// A list of parameter names expected by the function.
 List<String> get parameters;
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

/// The name of the contract function.
@override final  String name;
/// A list of parameter names expected by the function.
 final  List<String> _parameters;
/// A list of parameter names expected by the function.
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

/// The compiled WebAssembly (WASM) bytecode of the smart contract, as a hex string.
 String? get bytecode;/// The manifest of the smart contract, containing its ABI.
 ContractManifest get manifest;
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

/// The compiled WebAssembly (WASM) bytecode of the smart contract, as a hex string.
@override final  String? bytecode;
/// The manifest of the smart contract, containing its ABI.
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
