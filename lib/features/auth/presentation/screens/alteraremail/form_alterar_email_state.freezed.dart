// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_alterar_email_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FormAlterarEmailState {

 String get email; String get senha; String? get erro; String? get erroEmail; String? get erroSenha; bool get isLoading; bool get isSucess; bool get isCamposValidos;
/// Create a copy of FormAlterarEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormAlterarEmailStateCopyWith<FormAlterarEmailState> get copyWith => _$FormAlterarEmailStateCopyWithImpl<FormAlterarEmailState>(this as FormAlterarEmailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormAlterarEmailState&&(identical(other.email, email) || other.email == email)&&(identical(other.senha, senha) || other.senha == senha)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroEmail, erroEmail) || other.erroEmail == erroEmail)&&(identical(other.erroSenha, erroSenha) || other.erroSenha == erroSenha)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.isCamposValidos, isCamposValidos) || other.isCamposValidos == isCamposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,email,senha,erro,erroEmail,erroSenha,isLoading,isSucess,isCamposValidos);

@override
String toString() {
  return 'FormAlterarEmailState(email: $email, senha: $senha, erro: $erro, erroEmail: $erroEmail, erroSenha: $erroSenha, isLoading: $isLoading, isSucess: $isSucess, isCamposValidos: $isCamposValidos)';
}


}

/// @nodoc
abstract mixin class $FormAlterarEmailStateCopyWith<$Res>  {
  factory $FormAlterarEmailStateCopyWith(FormAlterarEmailState value, $Res Function(FormAlterarEmailState) _then) = _$FormAlterarEmailStateCopyWithImpl;
@useResult
$Res call({
 String email, String senha, String? erro, String? erroEmail, String? erroSenha, bool isLoading, bool isSucess, bool isCamposValidos
});




}
/// @nodoc
class _$FormAlterarEmailStateCopyWithImpl<$Res>
    implements $FormAlterarEmailStateCopyWith<$Res> {
  _$FormAlterarEmailStateCopyWithImpl(this._self, this._then);

  final FormAlterarEmailState _self;
  final $Res Function(FormAlterarEmailState) _then;

/// Create a copy of FormAlterarEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? senha = null,Object? erro = freezed,Object? erroEmail = freezed,Object? erroSenha = freezed,Object? isLoading = null,Object? isSucess = null,Object? isCamposValidos = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,senha: null == senha ? _self.senha : senha // ignore: cast_nullable_to_non_nullable
as String,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroEmail: freezed == erroEmail ? _self.erroEmail : erroEmail // ignore: cast_nullable_to_non_nullable
as String?,erroSenha: freezed == erroSenha ? _self.erroSenha : erroSenha // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,isCamposValidos: null == isCamposValidos ? _self.isCamposValidos : isCamposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FormAlterarEmailState].
extension FormAlterarEmailStatePatterns on FormAlterarEmailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FormAlterarEmailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FormAlterarEmailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FormAlterarEmailState value)  $default,){
final _that = this;
switch (_that) {
case _FormAlterarEmailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FormAlterarEmailState value)?  $default,){
final _that = this;
switch (_that) {
case _FormAlterarEmailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String senha,  String? erro,  String? erroEmail,  String? erroSenha,  bool isLoading,  bool isSucess,  bool isCamposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FormAlterarEmailState() when $default != null:
return $default(_that.email,_that.senha,_that.erro,_that.erroEmail,_that.erroSenha,_that.isLoading,_that.isSucess,_that.isCamposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String senha,  String? erro,  String? erroEmail,  String? erroSenha,  bool isLoading,  bool isSucess,  bool isCamposValidos)  $default,) {final _that = this;
switch (_that) {
case _FormAlterarEmailState():
return $default(_that.email,_that.senha,_that.erro,_that.erroEmail,_that.erroSenha,_that.isLoading,_that.isSucess,_that.isCamposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String senha,  String? erro,  String? erroEmail,  String? erroSenha,  bool isLoading,  bool isSucess,  bool isCamposValidos)?  $default,) {final _that = this;
switch (_that) {
case _FormAlterarEmailState() when $default != null:
return $default(_that.email,_that.senha,_that.erro,_that.erroEmail,_that.erroSenha,_that.isLoading,_that.isSucess,_that.isCamposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _FormAlterarEmailState implements FormAlterarEmailState {
  const _FormAlterarEmailState({this.email = '', this.senha = '', this.erro, this.erroEmail, this.erroSenha, this.isLoading = false, this.isSucess = false, this.isCamposValidos = false});
  

@override@JsonKey() final  String email;
@override@JsonKey() final  String senha;
@override final  String? erro;
@override final  String? erroEmail;
@override final  String? erroSenha;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSucess;
@override@JsonKey() final  bool isCamposValidos;

/// Create a copy of FormAlterarEmailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FormAlterarEmailStateCopyWith<_FormAlterarEmailState> get copyWith => __$FormAlterarEmailStateCopyWithImpl<_FormAlterarEmailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormAlterarEmailState&&(identical(other.email, email) || other.email == email)&&(identical(other.senha, senha) || other.senha == senha)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroEmail, erroEmail) || other.erroEmail == erroEmail)&&(identical(other.erroSenha, erroSenha) || other.erroSenha == erroSenha)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.isCamposValidos, isCamposValidos) || other.isCamposValidos == isCamposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,email,senha,erro,erroEmail,erroSenha,isLoading,isSucess,isCamposValidos);

@override
String toString() {
  return 'FormAlterarEmailState(email: $email, senha: $senha, erro: $erro, erroEmail: $erroEmail, erroSenha: $erroSenha, isLoading: $isLoading, isSucess: $isSucess, isCamposValidos: $isCamposValidos)';
}


}

/// @nodoc
abstract mixin class _$FormAlterarEmailStateCopyWith<$Res> implements $FormAlterarEmailStateCopyWith<$Res> {
  factory _$FormAlterarEmailStateCopyWith(_FormAlterarEmailState value, $Res Function(_FormAlterarEmailState) _then) = __$FormAlterarEmailStateCopyWithImpl;
@override @useResult
$Res call({
 String email, String senha, String? erro, String? erroEmail, String? erroSenha, bool isLoading, bool isSucess, bool isCamposValidos
});




}
/// @nodoc
class __$FormAlterarEmailStateCopyWithImpl<$Res>
    implements _$FormAlterarEmailStateCopyWith<$Res> {
  __$FormAlterarEmailStateCopyWithImpl(this._self, this._then);

  final _FormAlterarEmailState _self;
  final $Res Function(_FormAlterarEmailState) _then;

/// Create a copy of FormAlterarEmailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? senha = null,Object? erro = freezed,Object? erroEmail = freezed,Object? erroSenha = freezed,Object? isLoading = null,Object? isSucess = null,Object? isCamposValidos = null,}) {
  return _then(_FormAlterarEmailState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,senha: null == senha ? _self.senha : senha // ignore: cast_nullable_to_non_nullable
as String,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroEmail: freezed == erroEmail ? _self.erroEmail : erroEmail // ignore: cast_nullable_to_non_nullable
as String?,erroSenha: freezed == erroSenha ? _self.erroSenha : erroSenha // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,isCamposValidos: null == isCamposValidos ? _self.isCamposValidos : isCamposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
