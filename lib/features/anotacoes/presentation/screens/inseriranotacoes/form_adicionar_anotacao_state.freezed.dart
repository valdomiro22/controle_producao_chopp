// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_adicionar_anotacao_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FormAdicionarAnotacaoState {

 String get codigo; String? get erroCodigo; String? get erro; bool get isLoading; bool get isSucesso; bool get isCamposValidos;
/// Create a copy of FormAdicionarAnotacaoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormAdicionarAnotacaoStateCopyWith<FormAdicionarAnotacaoState> get copyWith => _$FormAdicionarAnotacaoStateCopyWithImpl<FormAdicionarAnotacaoState>(this as FormAdicionarAnotacaoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormAdicionarAnotacaoState&&(identical(other.codigo, codigo) || other.codigo == codigo)&&(identical(other.erroCodigo, erroCodigo) || other.erroCodigo == erroCodigo)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucesso, isSucesso) || other.isSucesso == isSucesso)&&(identical(other.isCamposValidos, isCamposValidos) || other.isCamposValidos == isCamposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,codigo,erroCodigo,erro,isLoading,isSucesso,isCamposValidos);

@override
String toString() {
  return 'FormAdicionarAnotacaoState(codigo: $codigo, erroCodigo: $erroCodigo, erro: $erro, isLoading: $isLoading, isSucesso: $isSucesso, isCamposValidos: $isCamposValidos)';
}


}

/// @nodoc
abstract mixin class $FormAdicionarAnotacaoStateCopyWith<$Res>  {
  factory $FormAdicionarAnotacaoStateCopyWith(FormAdicionarAnotacaoState value, $Res Function(FormAdicionarAnotacaoState) _then) = _$FormAdicionarAnotacaoStateCopyWithImpl;
@useResult
$Res call({
 String codigo, String? erroCodigo, String? erro, bool isLoading, bool isSucesso, bool isCamposValidos
});




}
/// @nodoc
class _$FormAdicionarAnotacaoStateCopyWithImpl<$Res>
    implements $FormAdicionarAnotacaoStateCopyWith<$Res> {
  _$FormAdicionarAnotacaoStateCopyWithImpl(this._self, this._then);

  final FormAdicionarAnotacaoState _self;
  final $Res Function(FormAdicionarAnotacaoState) _then;

/// Create a copy of FormAdicionarAnotacaoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? codigo = null,Object? erroCodigo = freezed,Object? erro = freezed,Object? isLoading = null,Object? isSucesso = null,Object? isCamposValidos = null,}) {
  return _then(_self.copyWith(
codigo: null == codigo ? _self.codigo : codigo // ignore: cast_nullable_to_non_nullable
as String,erroCodigo: freezed == erroCodigo ? _self.erroCodigo : erroCodigo // ignore: cast_nullable_to_non_nullable
as String?,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucesso: null == isSucesso ? _self.isSucesso : isSucesso // ignore: cast_nullable_to_non_nullable
as bool,isCamposValidos: null == isCamposValidos ? _self.isCamposValidos : isCamposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FormAdicionarAnotacaoState].
extension FormAdicionarAnotacaoStatePatterns on FormAdicionarAnotacaoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FormAdicionarAnotacaoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FormAdicionarAnotacaoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FormAdicionarAnotacaoState value)  $default,){
final _that = this;
switch (_that) {
case _FormAdicionarAnotacaoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FormAdicionarAnotacaoState value)?  $default,){
final _that = this;
switch (_that) {
case _FormAdicionarAnotacaoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String codigo,  String? erroCodigo,  String? erro,  bool isLoading,  bool isSucesso,  bool isCamposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FormAdicionarAnotacaoState() when $default != null:
return $default(_that.codigo,_that.erroCodigo,_that.erro,_that.isLoading,_that.isSucesso,_that.isCamposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String codigo,  String? erroCodigo,  String? erro,  bool isLoading,  bool isSucesso,  bool isCamposValidos)  $default,) {final _that = this;
switch (_that) {
case _FormAdicionarAnotacaoState():
return $default(_that.codigo,_that.erroCodigo,_that.erro,_that.isLoading,_that.isSucesso,_that.isCamposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String codigo,  String? erroCodigo,  String? erro,  bool isLoading,  bool isSucesso,  bool isCamposValidos)?  $default,) {final _that = this;
switch (_that) {
case _FormAdicionarAnotacaoState() when $default != null:
return $default(_that.codigo,_that.erroCodigo,_that.erro,_that.isLoading,_that.isSucesso,_that.isCamposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _FormAdicionarAnotacaoState implements FormAdicionarAnotacaoState {
  const _FormAdicionarAnotacaoState({this.codigo = '', this.erroCodigo, this.erro, this.isLoading = false, this.isSucesso = false, this.isCamposValidos = false});
  

@override@JsonKey() final  String codigo;
@override final  String? erroCodigo;
@override final  String? erro;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSucesso;
@override@JsonKey() final  bool isCamposValidos;

/// Create a copy of FormAdicionarAnotacaoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FormAdicionarAnotacaoStateCopyWith<_FormAdicionarAnotacaoState> get copyWith => __$FormAdicionarAnotacaoStateCopyWithImpl<_FormAdicionarAnotacaoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormAdicionarAnotacaoState&&(identical(other.codigo, codigo) || other.codigo == codigo)&&(identical(other.erroCodigo, erroCodigo) || other.erroCodigo == erroCodigo)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucesso, isSucesso) || other.isSucesso == isSucesso)&&(identical(other.isCamposValidos, isCamposValidos) || other.isCamposValidos == isCamposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,codigo,erroCodigo,erro,isLoading,isSucesso,isCamposValidos);

@override
String toString() {
  return 'FormAdicionarAnotacaoState(codigo: $codigo, erroCodigo: $erroCodigo, erro: $erro, isLoading: $isLoading, isSucesso: $isSucesso, isCamposValidos: $isCamposValidos)';
}


}

/// @nodoc
abstract mixin class _$FormAdicionarAnotacaoStateCopyWith<$Res> implements $FormAdicionarAnotacaoStateCopyWith<$Res> {
  factory _$FormAdicionarAnotacaoStateCopyWith(_FormAdicionarAnotacaoState value, $Res Function(_FormAdicionarAnotacaoState) _then) = __$FormAdicionarAnotacaoStateCopyWithImpl;
@override @useResult
$Res call({
 String codigo, String? erroCodigo, String? erro, bool isLoading, bool isSucesso, bool isCamposValidos
});




}
/// @nodoc
class __$FormAdicionarAnotacaoStateCopyWithImpl<$Res>
    implements _$FormAdicionarAnotacaoStateCopyWith<$Res> {
  __$FormAdicionarAnotacaoStateCopyWithImpl(this._self, this._then);

  final _FormAdicionarAnotacaoState _self;
  final $Res Function(_FormAdicionarAnotacaoState) _then;

/// Create a copy of FormAdicionarAnotacaoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? codigo = null,Object? erroCodigo = freezed,Object? erro = freezed,Object? isLoading = null,Object? isSucesso = null,Object? isCamposValidos = null,}) {
  return _then(_FormAdicionarAnotacaoState(
codigo: null == codigo ? _self.codigo : codigo // ignore: cast_nullable_to_non_nullable
as String,erroCodigo: freezed == erroCodigo ? _self.erroCodigo : erroCodigo // ignore: cast_nullable_to_non_nullable
as String?,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucesso: null == isSucesso ? _self.isSucesso : isSucesso // ignore: cast_nullable_to_non_nullable
as bool,isCamposValidos: null == isCamposValidos ? _self.isCamposValidos : isCamposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
