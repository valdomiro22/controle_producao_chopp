// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alterar_nivel_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AlterarNivelState {

 int get nivel; String? get erroNivel; String? get erro; bool get isLoading; bool get isSucess; bool get camposValidos;
/// Create a copy of AlterarNivelState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlterarNivelStateCopyWith<AlterarNivelState> get copyWith => _$AlterarNivelStateCopyWithImpl<AlterarNivelState>(this as AlterarNivelState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlterarNivelState&&(identical(other.nivel, nivel) || other.nivel == nivel)&&(identical(other.erroNivel, erroNivel) || other.erroNivel == erroNivel)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,nivel,erroNivel,erro,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'AlterarNivelState(nivel: $nivel, erroNivel: $erroNivel, erro: $erro, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $AlterarNivelStateCopyWith<$Res>  {
  factory $AlterarNivelStateCopyWith(AlterarNivelState value, $Res Function(AlterarNivelState) _then) = _$AlterarNivelStateCopyWithImpl;
@useResult
$Res call({
 int nivel, String? erroNivel, String? erro, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class _$AlterarNivelStateCopyWithImpl<$Res>
    implements $AlterarNivelStateCopyWith<$Res> {
  _$AlterarNivelStateCopyWithImpl(this._self, this._then);

  final AlterarNivelState _self;
  final $Res Function(AlterarNivelState) _then;

/// Create a copy of AlterarNivelState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nivel = null,Object? erroNivel = freezed,Object? erro = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
nivel: null == nivel ? _self.nivel : nivel // ignore: cast_nullable_to_non_nullable
as int,erroNivel: freezed == erroNivel ? _self.erroNivel : erroNivel // ignore: cast_nullable_to_non_nullable
as String?,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AlterarNivelState].
extension AlterarNivelStatePatterns on AlterarNivelState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlterarNivelState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlterarNivelState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlterarNivelState value)  $default,){
final _that = this;
switch (_that) {
case _AlterarNivelState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlterarNivelState value)?  $default,){
final _that = this;
switch (_that) {
case _AlterarNivelState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int nivel,  String? erroNivel,  String? erro,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlterarNivelState() when $default != null:
return $default(_that.nivel,_that.erroNivel,_that.erro,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int nivel,  String? erroNivel,  String? erro,  bool isLoading,  bool isSucess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _AlterarNivelState():
return $default(_that.nivel,_that.erroNivel,_that.erro,_that.isLoading,_that.isSucess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int nivel,  String? erroNivel,  String? erro,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _AlterarNivelState() when $default != null:
return $default(_that.nivel,_that.erroNivel,_that.erro,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _AlterarNivelState implements AlterarNivelState {
  const _AlterarNivelState({this.nivel = -1, this.erroNivel, this.erro, this.isLoading = false, this.isSucess = false, this.camposValidos = false});
  

@override@JsonKey() final  int nivel;
@override final  String? erroNivel;
@override final  String? erro;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSucess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of AlterarNivelState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlterarNivelStateCopyWith<_AlterarNivelState> get copyWith => __$AlterarNivelStateCopyWithImpl<_AlterarNivelState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlterarNivelState&&(identical(other.nivel, nivel) || other.nivel == nivel)&&(identical(other.erroNivel, erroNivel) || other.erroNivel == erroNivel)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,nivel,erroNivel,erro,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'AlterarNivelState(nivel: $nivel, erroNivel: $erroNivel, erro: $erro, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$AlterarNivelStateCopyWith<$Res> implements $AlterarNivelStateCopyWith<$Res> {
  factory _$AlterarNivelStateCopyWith(_AlterarNivelState value, $Res Function(_AlterarNivelState) _then) = __$AlterarNivelStateCopyWithImpl;
@override @useResult
$Res call({
 int nivel, String? erroNivel, String? erro, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class __$AlterarNivelStateCopyWithImpl<$Res>
    implements _$AlterarNivelStateCopyWith<$Res> {
  __$AlterarNivelStateCopyWithImpl(this._self, this._then);

  final _AlterarNivelState _self;
  final $Res Function(_AlterarNivelState) _then;

/// Create a copy of AlterarNivelState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nivel = null,Object? erroNivel = freezed,Object? erro = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_AlterarNivelState(
nivel: null == nivel ? _self.nivel : nivel // ignore: cast_nullable_to_non_nullable
as int,erroNivel: freezed == erroNivel ? _self.erroNivel : erroNivel // ignore: cast_nullable_to_non_nullable
as String?,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
