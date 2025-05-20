// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Token {

 String? get address; String? get genesis; String? get name; String? get id; int? get supply; String? get type; int? get decimals; String? get symbol; Map<String, dynamic> get properties; List<Map<String, dynamic>> get collection; List<int>? get aeip; List<Ownership>? get ownerships;
/// Create a copy of Token
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenCopyWith<Token> get copyWith => _$TokenCopyWithImpl<Token>(this as Token, _$identity);

  /// Serializes this Token to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Token&&(identical(other.address, address) || other.address == address)&&(identical(other.genesis, genesis) || other.genesis == genesis)&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.supply, supply) || other.supply == supply)&&(identical(other.type, type) || other.type == type)&&(identical(other.decimals, decimals) || other.decimals == decimals)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&const DeepCollectionEquality().equals(other.properties, properties)&&const DeepCollectionEquality().equals(other.collection, collection)&&const DeepCollectionEquality().equals(other.aeip, aeip)&&const DeepCollectionEquality().equals(other.ownerships, ownerships));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,genesis,name,id,supply,type,decimals,symbol,const DeepCollectionEquality().hash(properties),const DeepCollectionEquality().hash(collection),const DeepCollectionEquality().hash(aeip),const DeepCollectionEquality().hash(ownerships));

@override
String toString() {
  return 'Token(address: $address, genesis: $genesis, name: $name, id: $id, supply: $supply, type: $type, decimals: $decimals, symbol: $symbol, properties: $properties, collection: $collection, aeip: $aeip, ownerships: $ownerships)';
}


}

/// @nodoc
abstract mixin class $TokenCopyWith<$Res>  {
  factory $TokenCopyWith(Token value, $Res Function(Token) _then) = _$TokenCopyWithImpl;
@useResult
$Res call({
 String? address, String? genesis, String? name, String? id, int? supply, String? type, int? decimals, String? symbol, Map<String, dynamic> properties, List<Map<String, dynamic>> collection, List<int>? aeip, List<Ownership>? ownerships
});




}
/// @nodoc
class _$TokenCopyWithImpl<$Res>
    implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._self, this._then);

  final Token _self;
  final $Res Function(Token) _then;

/// Create a copy of Token
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = freezed,Object? genesis = freezed,Object? name = freezed,Object? id = freezed,Object? supply = freezed,Object? type = freezed,Object? decimals = freezed,Object? symbol = freezed,Object? properties = null,Object? collection = null,Object? aeip = freezed,Object? ownerships = freezed,}) {
  return _then(_self.copyWith(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,genesis: freezed == genesis ? _self.genesis : genesis // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,supply: freezed == supply ? _self.supply : supply // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,decimals: freezed == decimals ? _self.decimals : decimals // ignore: cast_nullable_to_non_nullable
as int?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,properties: null == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,collection: null == collection ? _self.collection : collection // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,aeip: freezed == aeip ? _self.aeip : aeip // ignore: cast_nullable_to_non_nullable
as List<int>?,ownerships: freezed == ownerships ? _self.ownerships : ownerships // ignore: cast_nullable_to_non_nullable
as List<Ownership>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Token extends Token {
  const _Token({this.address, this.genesis, this.name, this.id, this.supply, this.type, this.decimals, this.symbol, final  Map<String, dynamic> properties = const {}, final  List<Map<String, dynamic>> collection = const [], final  List<int>? aeip = const [], final  List<Ownership>? ownerships = const []}): _properties = properties,_collection = collection,_aeip = aeip,_ownerships = ownerships,super._();
  factory _Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

@override final  String? address;
@override final  String? genesis;
@override final  String? name;
@override final  String? id;
@override final  int? supply;
@override final  String? type;
@override final  int? decimals;
@override final  String? symbol;
 final  Map<String, dynamic> _properties;
@override@JsonKey() Map<String, dynamic> get properties {
  if (_properties is EqualUnmodifiableMapView) return _properties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_properties);
}

 final  List<Map<String, dynamic>> _collection;
@override@JsonKey() List<Map<String, dynamic>> get collection {
  if (_collection is EqualUnmodifiableListView) return _collection;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_collection);
}

 final  List<int>? _aeip;
@override@JsonKey() List<int>? get aeip {
  final value = _aeip;
  if (value == null) return null;
  if (_aeip is EqualUnmodifiableListView) return _aeip;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Ownership>? _ownerships;
@override@JsonKey() List<Ownership>? get ownerships {
  final value = _ownerships;
  if (value == null) return null;
  if (_ownerships is EqualUnmodifiableListView) return _ownerships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Token
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenCopyWith<_Token> get copyWith => __$TokenCopyWithImpl<_Token>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Token&&(identical(other.address, address) || other.address == address)&&(identical(other.genesis, genesis) || other.genesis == genesis)&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.supply, supply) || other.supply == supply)&&(identical(other.type, type) || other.type == type)&&(identical(other.decimals, decimals) || other.decimals == decimals)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&const DeepCollectionEquality().equals(other._properties, _properties)&&const DeepCollectionEquality().equals(other._collection, _collection)&&const DeepCollectionEquality().equals(other._aeip, _aeip)&&const DeepCollectionEquality().equals(other._ownerships, _ownerships));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,genesis,name,id,supply,type,decimals,symbol,const DeepCollectionEquality().hash(_properties),const DeepCollectionEquality().hash(_collection),const DeepCollectionEquality().hash(_aeip),const DeepCollectionEquality().hash(_ownerships));

@override
String toString() {
  return 'Token(address: $address, genesis: $genesis, name: $name, id: $id, supply: $supply, type: $type, decimals: $decimals, symbol: $symbol, properties: $properties, collection: $collection, aeip: $aeip, ownerships: $ownerships)';
}


}

/// @nodoc
abstract mixin class _$TokenCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$TokenCopyWith(_Token value, $Res Function(_Token) _then) = __$TokenCopyWithImpl;
@override @useResult
$Res call({
 String? address, String? genesis, String? name, String? id, int? supply, String? type, int? decimals, String? symbol, Map<String, dynamic> properties, List<Map<String, dynamic>> collection, List<int>? aeip, List<Ownership>? ownerships
});




}
/// @nodoc
class __$TokenCopyWithImpl<$Res>
    implements _$TokenCopyWith<$Res> {
  __$TokenCopyWithImpl(this._self, this._then);

  final _Token _self;
  final $Res Function(_Token) _then;

/// Create a copy of Token
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = freezed,Object? genesis = freezed,Object? name = freezed,Object? id = freezed,Object? supply = freezed,Object? type = freezed,Object? decimals = freezed,Object? symbol = freezed,Object? properties = null,Object? collection = null,Object? aeip = freezed,Object? ownerships = freezed,}) {
  return _then(_Token(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,genesis: freezed == genesis ? _self.genesis : genesis // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,supply: freezed == supply ? _self.supply : supply // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,decimals: freezed == decimals ? _self.decimals : decimals // ignore: cast_nullable_to_non_nullable
as int?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,properties: null == properties ? _self._properties : properties // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,collection: null == collection ? _self._collection : collection // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,aeip: freezed == aeip ? _self._aeip : aeip // ignore: cast_nullable_to_non_nullable
as List<int>?,ownerships: freezed == ownerships ? _self._ownerships : ownerships // ignore: cast_nullable_to_non_nullable
as List<Ownership>?,
  ));
}


}

// dart format on
