// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alterar_senha_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AlterarSenhaState {

 String get senhaAtual; String get novaSenha; String get confirmarSenha; String? get erro; String? get erroSenhaAtual; String? get erroNovaSenha; String? get erroConfirmarSenha; bool get isLoading; bool get isSucess; bool get isCamposValidos;
/// Create a copy of AlterarSenhaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlterarSenhaStateCopyWith<AlterarSenhaState> get copyWith => _$AlterarSenhaStateCopyWithImpl<AlterarSenhaState>(this as AlterarSenhaState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlterarSenhaState&&(identical(other.senhaAtual, senhaAtual) || other.senhaAtual == senhaAtual)&&(identical(other.novaSenha, novaSenha) || other.novaSenha == novaSenha)&&(identical(other.confirmarSenha, confirmarSenha) || other.confirmarSenha == confirmarSenha)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroSenhaAtual, erroSenhaAtual) || other.erroSenhaAtual == erroSenhaAtual)&&(identical(other.erroNovaSenha, erroNovaSenha) || other.erroNovaSenha == erroNovaSenha)&&(identical(other.erroConfirmarSenha, erroConfirmarSenha) || other.erroConfirmarSenha == erroConfirmarSenha)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.isCamposValidos, isCamposValidos) || other.isCamposValidos == isCamposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,senhaAtual,novaSenha,confirmarSenha,erro,erroSenhaAtual,erroNovaSenha,erroConfirmarSenha,isLoading,isSucess,isCamposValidos);

@override
String toString() {
  return 'AlterarSenhaState(senhaAtual: $senhaAtual, novaSenha: $novaSenha, confirmarSenha: $confirmarSenha, erro: $erro, erroSenhaAtual: $erroSenhaAtual, erroNovaSenha: $erroNovaSenha, erroConfirmarSenha: $erroConfirmarSenha, isLoading: $isLoading, isSucess: $isSucess, isCamposValidos: $isCamposValidos)';
}


}

/// @nodoc
abstract mixin class $AlterarSenhaStateCopyWith<$Res>  {
  factory $AlterarSenhaStateCopyWith(AlterarSenhaState value, $Res Function(AlterarSenhaState) _then) = _$AlterarSenhaStateCopyWithImpl;
@useResult
$Res call({
 String senhaAtual, String novaSenha, String confirmarSenha, String? erro, String? erroSenhaAtual, String? erroNovaSenha, String? erroConfirmarSenha, bool isLoading, bool isSucess, bool isCamposValidos
});




}
/// @nodoc
class _$AlterarSenhaStateCopyWithImpl<$Res>
    implements $AlterarSenhaStateCopyWith<$Res> {
  _$AlterarSenhaStateCopyWithImpl(this._self, this._then);

  final AlterarSenhaState _self;
  final $Res Function(AlterarSenhaState) _then;

/// Create a copy of AlterarSenhaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? senhaAtual = null,Object? novaSenha = null,Object? confirmarSenha = null,Object? erro = freezed,Object? erroSenhaAtual = freezed,Object? erroNovaSenha = freezed,Object? erroConfirmarSenha = freezed,Object? isLoading = null,Object? isSucess = null,Object? isCamposValidos = null,}) {
  return _then(_self.copyWith(
senhaAtual: null == senhaAtual ? _self.senhaAtual : senhaAtual // ignore: cast_nullable_to_non_nullable
as String,novaSenha: null == novaSenha ? _self.novaSenha : novaSenha // ignore: cast_nullable_to_non_nullable
as String,confirmarSenha: null == confirmarSenha ? _self.confirmarSenha : confirmarSenha // ignore: cast_nullable_to_non_nullable
as String,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroSenhaAtual: freezed == erroSenhaAtual ? _self.erroSenhaAtual : erroSenhaAtual // ignore: cast_nullable_to_non_nullable
as String?,erroNovaSenha: freezed == erroNovaSenha ? _self.erroNovaSenha : erroNovaSenha // ignore: cast_nullable_to_non_nullable
as String?,erroConfirmarSenha: freezed == erroConfirmarSenha ? _self.erroConfirmarSenha : erroConfirmarSenha // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,isCamposValidos: null == isCamposValidos ? _self.isCamposValidos : isCamposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AlterarSenhaState].
extension AlterarSenhaStatePatterns on AlterarSenhaState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlterarSenhaState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlterarSenhaState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlterarSenhaState value)  $default,){
final _that = this;
switch (_that) {
case _AlterarSenhaState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlterarSenhaState value)?  $default,){
final _that = this;
switch (_that) {
case _AlterarSenhaState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String senhaAtual,  String novaSenha,  String confirmarSenha,  String? erro,  String? erroSenhaAtual,  String? erroNovaSenha,  String? erroConfirmarSenha,  bool isLoading,  bool isSucess,  bool isCamposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlterarSenhaState() when $default != null:
return $default(_that.senhaAtual,_that.novaSenha,_that.confirmarSenha,_that.erro,_that.erroSenhaAtual,_that.erroNovaSenha,_that.erroConfirmarSenha,_that.isLoading,_that.isSucess,_that.isCamposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String senhaAtual,  String novaSenha,  String confirmarSenha,  String? erro,  String? erroSenhaAtual,  String? erroNovaSenha,  String? erroConfirmarSenha,  bool isLoading,  bool isSucess,  bool isCamposValidos)  $default,) {final _that = this;
switch (_that) {
case _AlterarSenhaState():
return $default(_that.senhaAtual,_that.novaSenha,_that.confirmarSenha,_that.erro,_that.erroSenhaAtual,_that.erroNovaSenha,_that.erroConfirmarSenha,_that.isLoading,_that.isSucess,_that.isCamposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String senhaAtual,  String novaSenha,  String confirmarSenha,  String? erro,  String? erroSenhaAtual,  String? erroNovaSenha,  String? erroConfirmarSenha,  bool isLoading,  bool isSucess,  bool isCamposValidos)?  $default,) {final _that = this;
switch (_that) {
case _AlterarSenhaState() when $default != null:
return $default(_that.senhaAtual,_that.novaSenha,_that.confirmarSenha,_that.erro,_that.erroSenhaAtual,_that.erroNovaSenha,_that.erroConfirmarSenha,_that.isLoading,_that.isSucess,_that.isCamposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _AlterarSenhaState implements AlterarSenhaState {
  const _AlterarSenhaState({this.senhaAtual = '', this.novaSenha = '', this.confirmarSenha = '', this.erro, this.erroSenhaAtual, this.erroNovaSenha, this.erroConfirmarSenha, this.isLoading = false, this.isSucess = false, this.isCamposValidos = false});
  

@override@JsonKey() final  String senhaAtual;
@override@JsonKey() final  String novaSenha;
@override@JsonKey() final  String confirmarSenha;
@override final  String? erro;
@override final  String? erroSenhaAtual;
@override final  String? erroNovaSenha;
@override final  String? erroConfirmarSenha;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSucess;
@override@JsonKey() final  bool isCamposValidos;

/// Create a copy of AlterarSenhaState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlterarSenhaStateCopyWith<_AlterarSenhaState> get copyWith => __$AlterarSenhaStateCopyWithImpl<_AlterarSenhaState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlterarSenhaState&&(identical(other.senhaAtual, senhaAtual) || other.senhaAtual == senhaAtual)&&(identical(other.novaSenha, novaSenha) || other.novaSenha == novaSenha)&&(identical(other.confirmarSenha, confirmarSenha) || other.confirmarSenha == confirmarSenha)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroSenhaAtual, erroSenhaAtual) || other.erroSenhaAtual == erroSenhaAtual)&&(identical(other.erroNovaSenha, erroNovaSenha) || other.erroNovaSenha == erroNovaSenha)&&(identical(other.erroConfirmarSenha, erroConfirmarSenha) || other.erroConfirmarSenha == erroConfirmarSenha)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.isCamposValidos, isCamposValidos) || other.isCamposValidos == isCamposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,senhaAtual,novaSenha,confirmarSenha,erro,erroSenhaAtual,erroNovaSenha,erroConfirmarSenha,isLoading,isSucess,isCamposValidos);

@override
String toString() {
  return 'AlterarSenhaState(senhaAtual: $senhaAtual, novaSenha: $novaSenha, confirmarSenha: $confirmarSenha, erro: $erro, erroSenhaAtual: $erroSenhaAtual, erroNovaSenha: $erroNovaSenha, erroConfirmarSenha: $erroConfirmarSenha, isLoading: $isLoading, isSucess: $isSucess, isCamposValidos: $isCamposValidos)';
}


}

/// @nodoc
abstract mixin class _$AlterarSenhaStateCopyWith<$Res> implements $AlterarSenhaStateCopyWith<$Res> {
  factory _$AlterarSenhaStateCopyWith(_AlterarSenhaState value, $Res Function(_AlterarSenhaState) _then) = __$AlterarSenhaStateCopyWithImpl;
@override @useResult
$Res call({
 String senhaAtual, String novaSenha, String confirmarSenha, String? erro, String? erroSenhaAtual, String? erroNovaSenha, String? erroConfirmarSenha, bool isLoading, bool isSucess, bool isCamposValidos
});




}
/// @nodoc
class __$AlterarSenhaStateCopyWithImpl<$Res>
    implements _$AlterarSenhaStateCopyWith<$Res> {
  __$AlterarSenhaStateCopyWithImpl(this._self, this._then);

  final _AlterarSenhaState _self;
  final $Res Function(_AlterarSenhaState) _then;

/// Create a copy of AlterarSenhaState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? senhaAtual = null,Object? novaSenha = null,Object? confirmarSenha = null,Object? erro = freezed,Object? erroSenhaAtual = freezed,Object? erroNovaSenha = freezed,Object? erroConfirmarSenha = freezed,Object? isLoading = null,Object? isSucess = null,Object? isCamposValidos = null,}) {
  return _then(_AlterarSenhaState(
senhaAtual: null == senhaAtual ? _self.senhaAtual : senhaAtual // ignore: cast_nullable_to_non_nullable
as String,novaSenha: null == novaSenha ? _self.novaSenha : novaSenha // ignore: cast_nullable_to_non_nullable
as String,confirmarSenha: null == confirmarSenha ? _self.confirmarSenha : confirmarSenha // ignore: cast_nullable_to_non_nullable
as String,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroSenhaAtual: freezed == erroSenhaAtual ? _self.erroSenhaAtual : erroSenhaAtual // ignore: cast_nullable_to_non_nullable
as String?,erroNovaSenha: freezed == erroNovaSenha ? _self.erroNovaSenha : erroNovaSenha // ignore: cast_nullable_to_non_nullable
as String?,erroConfirmarSenha: freezed == erroConfirmarSenha ? _self.erroConfirmarSenha : erroConfirmarSenha // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,isCamposValidos: null == isCamposValidos ? _self.isCamposValidos : isCamposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
