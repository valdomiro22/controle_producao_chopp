// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tipo_barril_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TipoBarrilModel implements DiagnosticableTreeMixin {

 String? get id; String get nome; int get volume; bool get isRetornavel;
/// Create a copy of TipoBarrilModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TipoBarrilModelCopyWith<TipoBarrilModel> get copyWith => _$TipoBarrilModelCopyWithImpl<TipoBarrilModel>(this as TipoBarrilModel, _$identity);

  /// Serializes this TipoBarrilModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TipoBarrilModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('nome', nome))..add(DiagnosticsProperty('volume', volume))..add(DiagnosticsProperty('isRetornavel', isRetornavel));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TipoBarrilModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.isRetornavel, isRetornavel) || other.isRetornavel == isRetornavel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nome,volume,isRetornavel);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TipoBarrilModel(id: $id, nome: $nome, volume: $volume, isRetornavel: $isRetornavel)';
}


}

/// @nodoc
abstract mixin class $TipoBarrilModelCopyWith<$Res>  {
  factory $TipoBarrilModelCopyWith(TipoBarrilModel value, $Res Function(TipoBarrilModel) _then) = _$TipoBarrilModelCopyWithImpl;
@useResult
$Res call({
 String? id, String nome, int volume, bool isRetornavel
});




}
/// @nodoc
class _$TipoBarrilModelCopyWithImpl<$Res>
    implements $TipoBarrilModelCopyWith<$Res> {
  _$TipoBarrilModelCopyWithImpl(this._self, this._then);

  final TipoBarrilModel _self;
  final $Res Function(TipoBarrilModel) _then;

/// Create a copy of TipoBarrilModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? nome = null,Object? volume = null,Object? isRetornavel = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int,isRetornavel: null == isRetornavel ? _self.isRetornavel : isRetornavel // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TipoBarrilModel].
extension TipoBarrilModelPatterns on TipoBarrilModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TipoBarrilModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TipoBarrilModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TipoBarrilModel value)  $default,){
final _that = this;
switch (_that) {
case _TipoBarrilModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TipoBarrilModel value)?  $default,){
final _that = this;
switch (_that) {
case _TipoBarrilModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String nome,  int volume,  bool isRetornavel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TipoBarrilModel() when $default != null:
return $default(_that.id,_that.nome,_that.volume,_that.isRetornavel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String nome,  int volume,  bool isRetornavel)  $default,) {final _that = this;
switch (_that) {
case _TipoBarrilModel():
return $default(_that.id,_that.nome,_that.volume,_that.isRetornavel);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String nome,  int volume,  bool isRetornavel)?  $default,) {final _that = this;
switch (_that) {
case _TipoBarrilModel() when $default != null:
return $default(_that.id,_that.nome,_that.volume,_that.isRetornavel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TipoBarrilModel extends TipoBarrilModel with DiagnosticableTreeMixin {
  const _TipoBarrilModel({this.id, required this.nome, required this.volume, this.isRetornavel = false}): super._();
  factory _TipoBarrilModel.fromJson(Map<String, dynamic> json) => _$TipoBarrilModelFromJson(json);

@override final  String? id;
@override final  String nome;
@override final  int volume;
@override@JsonKey() final  bool isRetornavel;

/// Create a copy of TipoBarrilModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TipoBarrilModelCopyWith<_TipoBarrilModel> get copyWith => __$TipoBarrilModelCopyWithImpl<_TipoBarrilModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TipoBarrilModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TipoBarrilModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('nome', nome))..add(DiagnosticsProperty('volume', volume))..add(DiagnosticsProperty('isRetornavel', isRetornavel));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TipoBarrilModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.isRetornavel, isRetornavel) || other.isRetornavel == isRetornavel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nome,volume,isRetornavel);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TipoBarrilModel(id: $id, nome: $nome, volume: $volume, isRetornavel: $isRetornavel)';
}


}

/// @nodoc
abstract mixin class _$TipoBarrilModelCopyWith<$Res> implements $TipoBarrilModelCopyWith<$Res> {
  factory _$TipoBarrilModelCopyWith(_TipoBarrilModel value, $Res Function(_TipoBarrilModel) _then) = __$TipoBarrilModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String nome, int volume, bool isRetornavel
});




}
/// @nodoc
class __$TipoBarrilModelCopyWithImpl<$Res>
    implements _$TipoBarrilModelCopyWith<$Res> {
  __$TipoBarrilModelCopyWithImpl(this._self, this._then);

  final _TipoBarrilModel _self;
  final $Res Function(_TipoBarrilModel) _then;

/// Create a copy of TipoBarrilModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? nome = null,Object? volume = null,Object? isRetornavel = null,}) {
  return _then(_TipoBarrilModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int,isRetornavel: null == isRetornavel ? _self.isRetornavel : isRetornavel // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
