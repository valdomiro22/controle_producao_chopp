// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_alterar_nome_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FormAlterarNomeState {

 String get nome; String get sobrenome; String? get erro; String? get erroNome; String? get erroSobrenome; bool get isLoading; bool get isSucess; bool get isCamposValidos;
/// Create a copy of FormAlterarNomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormAlterarNomeStateCopyWith<FormAlterarNomeState> get copyWith => _$FormAlterarNomeStateCopyWithImpl<FormAlterarNomeState>(this as FormAlterarNomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormAlterarNomeState&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.sobrenome, sobrenome) || other.sobrenome == sobrenome)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroNome, erroNome) || other.erroNome == erroNome)&&(identical(other.erroSobrenome, erroSobrenome) || other.erroSobrenome == erroSobrenome)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.isCamposValidos, isCamposValidos) || other.isCamposValidos == isCamposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,nome,sobrenome,erro,erroNome,erroSobrenome,isLoading,isSucess,isCamposValidos);

@override
String toString() {
  return 'FormAlterarNomeState(nome: $nome, sobrenome: $sobrenome, erro: $erro, erroNome: $erroNome, erroSobrenome: $erroSobrenome, isLoading: $isLoading, isSucess: $isSucess, isCamposValidos: $isCamposValidos)';
}


}

/// @nodoc
abstract mixin class $FormAlterarNomeStateCopyWith<$Res>  {
  factory $FormAlterarNomeStateCopyWith(FormAlterarNomeState value, $Res Function(FormAlterarNomeState) _then) = _$FormAlterarNomeStateCopyWithImpl;
@useResult
$Res call({
 String nome, String sobrenome, String? erro, String? erroNome, String? erroSobrenome, bool isLoading, bool isSucess, bool isCamposValidos
});




}
/// @nodoc
class _$FormAlterarNomeStateCopyWithImpl<$Res>
    implements $FormAlterarNomeStateCopyWith<$Res> {
  _$FormAlterarNomeStateCopyWithImpl(this._self, this._then);

  final FormAlterarNomeState _self;
  final $Res Function(FormAlterarNomeState) _then;

/// Create a copy of FormAlterarNomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nome = null,Object? sobrenome = null,Object? erro = freezed,Object? erroNome = freezed,Object? erroSobrenome = freezed,Object? isLoading = null,Object? isSucess = null,Object? isCamposValidos = null,}) {
  return _then(_self.copyWith(
nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,sobrenome: null == sobrenome ? _self.sobrenome : sobrenome // ignore: cast_nullable_to_non_nullable
as String,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroNome: freezed == erroNome ? _self.erroNome : erroNome // ignore: cast_nullable_to_non_nullable
as String?,erroSobrenome: freezed == erroSobrenome ? _self.erroSobrenome : erroSobrenome // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,isCamposValidos: null == isCamposValidos ? _self.isCamposValidos : isCamposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FormAlterarNomeState].
extension FormAlterarNomeStatePatterns on FormAlterarNomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FormAlterarNomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FormAlterarNomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FormAlterarNomeState value)  $default,){
final _that = this;
switch (_that) {
case _FormAlterarNomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FormAlterarNomeState value)?  $default,){
final _that = this;
switch (_that) {
case _FormAlterarNomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nome,  String sobrenome,  String? erro,  String? erroNome,  String? erroSobrenome,  bool isLoading,  bool isSucess,  bool isCamposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FormAlterarNomeState() when $default != null:
return $default(_that.nome,_that.sobrenome,_that.erro,_that.erroNome,_that.erroSobrenome,_that.isLoading,_that.isSucess,_that.isCamposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nome,  String sobrenome,  String? erro,  String? erroNome,  String? erroSobrenome,  bool isLoading,  bool isSucess,  bool isCamposValidos)  $default,) {final _that = this;
switch (_that) {
case _FormAlterarNomeState():
return $default(_that.nome,_that.sobrenome,_that.erro,_that.erroNome,_that.erroSobrenome,_that.isLoading,_that.isSucess,_that.isCamposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nome,  String sobrenome,  String? erro,  String? erroNome,  String? erroSobrenome,  bool isLoading,  bool isSucess,  bool isCamposValidos)?  $default,) {final _that = this;
switch (_that) {
case _FormAlterarNomeState() when $default != null:
return $default(_that.nome,_that.sobrenome,_that.erro,_that.erroNome,_that.erroSobrenome,_that.isLoading,_that.isSucess,_that.isCamposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _FormAlterarNomeState implements FormAlterarNomeState {
  const _FormAlterarNomeState({this.nome = '', this.sobrenome = '', this.erro, this.erroNome, this.erroSobrenome, this.isLoading = false, this.isSucess = false, this.isCamposValidos = false});
  

@override@JsonKey() final  String nome;
@override@JsonKey() final  String sobrenome;
@override final  String? erro;
@override final  String? erroNome;
@override final  String? erroSobrenome;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSucess;
@override@JsonKey() final  bool isCamposValidos;

/// Create a copy of FormAlterarNomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FormAlterarNomeStateCopyWith<_FormAlterarNomeState> get copyWith => __$FormAlterarNomeStateCopyWithImpl<_FormAlterarNomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormAlterarNomeState&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.sobrenome, sobrenome) || other.sobrenome == sobrenome)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroNome, erroNome) || other.erroNome == erroNome)&&(identical(other.erroSobrenome, erroSobrenome) || other.erroSobrenome == erroSobrenome)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.isCamposValidos, isCamposValidos) || other.isCamposValidos == isCamposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,nome,sobrenome,erro,erroNome,erroSobrenome,isLoading,isSucess,isCamposValidos);

@override
String toString() {
  return 'FormAlterarNomeState(nome: $nome, sobrenome: $sobrenome, erro: $erro, erroNome: $erroNome, erroSobrenome: $erroSobrenome, isLoading: $isLoading, isSucess: $isSucess, isCamposValidos: $isCamposValidos)';
}


}

/// @nodoc
abstract mixin class _$FormAlterarNomeStateCopyWith<$Res> implements $FormAlterarNomeStateCopyWith<$Res> {
  factory _$FormAlterarNomeStateCopyWith(_FormAlterarNomeState value, $Res Function(_FormAlterarNomeState) _then) = __$FormAlterarNomeStateCopyWithImpl;
@override @useResult
$Res call({
 String nome, String sobrenome, String? erro, String? erroNome, String? erroSobrenome, bool isLoading, bool isSucess, bool isCamposValidos
});




}
/// @nodoc
class __$FormAlterarNomeStateCopyWithImpl<$Res>
    implements _$FormAlterarNomeStateCopyWith<$Res> {
  __$FormAlterarNomeStateCopyWithImpl(this._self, this._then);

  final _FormAlterarNomeState _self;
  final $Res Function(_FormAlterarNomeState) _then;

/// Create a copy of FormAlterarNomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nome = null,Object? sobrenome = null,Object? erro = freezed,Object? erroNome = freezed,Object? erroSobrenome = freezed,Object? isLoading = null,Object? isSucess = null,Object? isCamposValidos = null,}) {
  return _then(_FormAlterarNomeState(
nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,sobrenome: null == sobrenome ? _self.sobrenome : sobrenome // ignore: cast_nullable_to_non_nullable
as String,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroNome: freezed == erroNome ? _self.erroNome : erroNome // ignore: cast_nullable_to_non_nullable
as String?,erroSobrenome: freezed == erroSobrenome ? _self.erroSobrenome : erroSobrenome // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,isCamposValidos: null == isCamposValidos ? _self.isCamposValidos : isCamposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
