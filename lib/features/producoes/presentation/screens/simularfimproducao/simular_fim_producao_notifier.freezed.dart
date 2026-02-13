// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simular_fim_producao_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SimularFimState {

 int get programado; int get prodizido; int get nivelMax; double get vlNecessario; bool get isSuficiente; String? get erro; String? get erroProgramado; String? get erroProduzido; String? get erroNivelMax; bool get isLoading; bool get isSucess; bool get camposValidos;
/// Create a copy of SimularFimState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimularFimStateCopyWith<SimularFimState> get copyWith => _$SimularFimStateCopyWithImpl<SimularFimState>(this as SimularFimState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimularFimState&&(identical(other.programado, programado) || other.programado == programado)&&(identical(other.prodizido, prodizido) || other.prodizido == prodizido)&&(identical(other.nivelMax, nivelMax) || other.nivelMax == nivelMax)&&(identical(other.vlNecessario, vlNecessario) || other.vlNecessario == vlNecessario)&&(identical(other.isSuficiente, isSuficiente) || other.isSuficiente == isSuficiente)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroProgramado, erroProgramado) || other.erroProgramado == erroProgramado)&&(identical(other.erroProduzido, erroProduzido) || other.erroProduzido == erroProduzido)&&(identical(other.erroNivelMax, erroNivelMax) || other.erroNivelMax == erroNivelMax)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,programado,prodizido,nivelMax,vlNecessario,isSuficiente,erro,erroProgramado,erroProduzido,erroNivelMax,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'SimularFimState(programado: $programado, prodizido: $prodizido, nivelMax: $nivelMax, vlNecessario: $vlNecessario, isSuficiente: $isSuficiente, erro: $erro, erroProgramado: $erroProgramado, erroProduzido: $erroProduzido, erroNivelMax: $erroNivelMax, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $SimularFimStateCopyWith<$Res>  {
  factory $SimularFimStateCopyWith(SimularFimState value, $Res Function(SimularFimState) _then) = _$SimularFimStateCopyWithImpl;
@useResult
$Res call({
 int programado, int prodizido, int nivelMax, double vlNecessario, bool isSuficiente, String? erro, String? erroProgramado, String? erroProduzido, String? erroNivelMax, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class _$SimularFimStateCopyWithImpl<$Res>
    implements $SimularFimStateCopyWith<$Res> {
  _$SimularFimStateCopyWithImpl(this._self, this._then);

  final SimularFimState _self;
  final $Res Function(SimularFimState) _then;

/// Create a copy of SimularFimState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? programado = null,Object? prodizido = null,Object? nivelMax = null,Object? vlNecessario = null,Object? isSuficiente = null,Object? erro = freezed,Object? erroProgramado = freezed,Object? erroProduzido = freezed,Object? erroNivelMax = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
programado: null == programado ? _self.programado : programado // ignore: cast_nullable_to_non_nullable
as int,prodizido: null == prodizido ? _self.prodizido : prodizido // ignore: cast_nullable_to_non_nullable
as int,nivelMax: null == nivelMax ? _self.nivelMax : nivelMax // ignore: cast_nullable_to_non_nullable
as int,vlNecessario: null == vlNecessario ? _self.vlNecessario : vlNecessario // ignore: cast_nullable_to_non_nullable
as double,isSuficiente: null == isSuficiente ? _self.isSuficiente : isSuficiente // ignore: cast_nullable_to_non_nullable
as bool,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroProgramado: freezed == erroProgramado ? _self.erroProgramado : erroProgramado // ignore: cast_nullable_to_non_nullable
as String?,erroProduzido: freezed == erroProduzido ? _self.erroProduzido : erroProduzido // ignore: cast_nullable_to_non_nullable
as String?,erroNivelMax: freezed == erroNivelMax ? _self.erroNivelMax : erroNivelMax // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SimularFimState].
extension SimularFimStatePatterns on SimularFimState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SimularFimState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SimularFimState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SimularFimState value)  $default,){
final _that = this;
switch (_that) {
case _SimularFimState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SimularFimState value)?  $default,){
final _that = this;
switch (_that) {
case _SimularFimState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int programado,  int prodizido,  int nivelMax,  double vlNecessario,  bool isSuficiente,  String? erro,  String? erroProgramado,  String? erroProduzido,  String? erroNivelMax,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SimularFimState() when $default != null:
return $default(_that.programado,_that.prodizido,_that.nivelMax,_that.vlNecessario,_that.isSuficiente,_that.erro,_that.erroProgramado,_that.erroProduzido,_that.erroNivelMax,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int programado,  int prodizido,  int nivelMax,  double vlNecessario,  bool isSuficiente,  String? erro,  String? erroProgramado,  String? erroProduzido,  String? erroNivelMax,  bool isLoading,  bool isSucess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _SimularFimState():
return $default(_that.programado,_that.prodizido,_that.nivelMax,_that.vlNecessario,_that.isSuficiente,_that.erro,_that.erroProgramado,_that.erroProduzido,_that.erroNivelMax,_that.isLoading,_that.isSucess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int programado,  int prodizido,  int nivelMax,  double vlNecessario,  bool isSuficiente,  String? erro,  String? erroProgramado,  String? erroProduzido,  String? erroNivelMax,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _SimularFimState() when $default != null:
return $default(_that.programado,_that.prodizido,_that.nivelMax,_that.vlNecessario,_that.isSuficiente,_that.erro,_that.erroProgramado,_that.erroProduzido,_that.erroNivelMax,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _SimularFimState implements SimularFimState {
  const _SimularFimState({this.programado = 0, this.prodizido = 0, this.nivelMax = 0, this.vlNecessario = 0.0, this.isSuficiente = false, this.erro, this.erroProgramado, this.erroProduzido, this.erroNivelMax, this.isLoading = false, this.isSucess = false, this.camposValidos = false});
  

@override@JsonKey() final  int programado;
@override@JsonKey() final  int prodizido;
@override@JsonKey() final  int nivelMax;
@override@JsonKey() final  double vlNecessario;
@override@JsonKey() final  bool isSuficiente;
@override final  String? erro;
@override final  String? erroProgramado;
@override final  String? erroProduzido;
@override final  String? erroNivelMax;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSucess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of SimularFimState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SimularFimStateCopyWith<_SimularFimState> get copyWith => __$SimularFimStateCopyWithImpl<_SimularFimState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SimularFimState&&(identical(other.programado, programado) || other.programado == programado)&&(identical(other.prodizido, prodizido) || other.prodizido == prodizido)&&(identical(other.nivelMax, nivelMax) || other.nivelMax == nivelMax)&&(identical(other.vlNecessario, vlNecessario) || other.vlNecessario == vlNecessario)&&(identical(other.isSuficiente, isSuficiente) || other.isSuficiente == isSuficiente)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroProgramado, erroProgramado) || other.erroProgramado == erroProgramado)&&(identical(other.erroProduzido, erroProduzido) || other.erroProduzido == erroProduzido)&&(identical(other.erroNivelMax, erroNivelMax) || other.erroNivelMax == erroNivelMax)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,programado,prodizido,nivelMax,vlNecessario,isSuficiente,erro,erroProgramado,erroProduzido,erroNivelMax,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'SimularFimState(programado: $programado, prodizido: $prodizido, nivelMax: $nivelMax, vlNecessario: $vlNecessario, isSuficiente: $isSuficiente, erro: $erro, erroProgramado: $erroProgramado, erroProduzido: $erroProduzido, erroNivelMax: $erroNivelMax, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$SimularFimStateCopyWith<$Res> implements $SimularFimStateCopyWith<$Res> {
  factory _$SimularFimStateCopyWith(_SimularFimState value, $Res Function(_SimularFimState) _then) = __$SimularFimStateCopyWithImpl;
@override @useResult
$Res call({
 int programado, int prodizido, int nivelMax, double vlNecessario, bool isSuficiente, String? erro, String? erroProgramado, String? erroProduzido, String? erroNivelMax, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class __$SimularFimStateCopyWithImpl<$Res>
    implements _$SimularFimStateCopyWith<$Res> {
  __$SimularFimStateCopyWithImpl(this._self, this._then);

  final _SimularFimState _self;
  final $Res Function(_SimularFimState) _then;

/// Create a copy of SimularFimState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? programado = null,Object? prodizido = null,Object? nivelMax = null,Object? vlNecessario = null,Object? isSuficiente = null,Object? erro = freezed,Object? erroProgramado = freezed,Object? erroProduzido = freezed,Object? erroNivelMax = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_SimularFimState(
programado: null == programado ? _self.programado : programado // ignore: cast_nullable_to_non_nullable
as int,prodizido: null == prodizido ? _self.prodizido : prodizido // ignore: cast_nullable_to_non_nullable
as int,nivelMax: null == nivelMax ? _self.nivelMax : nivelMax // ignore: cast_nullable_to_non_nullable
as int,vlNecessario: null == vlNecessario ? _self.vlNecessario : vlNecessario // ignore: cast_nullable_to_non_nullable
as double,isSuficiente: null == isSuficiente ? _self.isSuficiente : isSuficiente // ignore: cast_nullable_to_non_nullable
as bool,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroProgramado: freezed == erroProgramado ? _self.erroProgramado : erroProgramado // ignore: cast_nullable_to_non_nullable
as String?,erroProduzido: freezed == erroProduzido ? _self.erroProduzido : erroProduzido // ignore: cast_nullable_to_non_nullable
as String?,erroNivelMax: freezed == erroNivelMax ? _self.erroNivelMax : erroNivelMax // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
