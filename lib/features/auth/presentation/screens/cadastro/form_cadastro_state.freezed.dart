// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_cadastro_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FormCadastroState {

 String? get id; String get nome; String get sobrenome; String get email; String get senha; bool get isLoading; bool get isSucesso; String? get erro; String? get erroEmail; String? get erroNome; String? get erroSobrenome; String? get erroSenha; bool get camposValidos;
/// Create a copy of FormCadastroState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormCadastroStateCopyWith<FormCadastroState> get copyWith => _$FormCadastroStateCopyWithImpl<FormCadastroState>(this as FormCadastroState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormCadastroState&&(identical(other.id, id) || other.id == id)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.sobrenome, sobrenome) || other.sobrenome == sobrenome)&&(identical(other.email, email) || other.email == email)&&(identical(other.senha, senha) || other.senha == senha)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucesso, isSucesso) || other.isSucesso == isSucesso)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroEmail, erroEmail) || other.erroEmail == erroEmail)&&(identical(other.erroNome, erroNome) || other.erroNome == erroNome)&&(identical(other.erroSobrenome, erroSobrenome) || other.erroSobrenome == erroSobrenome)&&(identical(other.erroSenha, erroSenha) || other.erroSenha == erroSenha)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,id,nome,sobrenome,email,senha,isLoading,isSucesso,erro,erroEmail,erroNome,erroSobrenome,erroSenha,camposValidos);

@override
String toString() {
  return 'FormCadastroState(id: $id, nome: $nome, sobrenome: $sobrenome, email: $email, senha: $senha, isLoading: $isLoading, isSucesso: $isSucesso, erro: $erro, erroEmail: $erroEmail, erroNome: $erroNome, erroSobrenome: $erroSobrenome, erroSenha: $erroSenha, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $FormCadastroStateCopyWith<$Res>  {
  factory $FormCadastroStateCopyWith(FormCadastroState value, $Res Function(FormCadastroState) _then) = _$FormCadastroStateCopyWithImpl;
@useResult
$Res call({
 String? id, String nome, String sobrenome, String email, String senha, bool isLoading, bool isSucesso, String? erro, String? erroEmail, String? erroNome, String? erroSobrenome, String? erroSenha, bool camposValidos
});




}
/// @nodoc
class _$FormCadastroStateCopyWithImpl<$Res>
    implements $FormCadastroStateCopyWith<$Res> {
  _$FormCadastroStateCopyWithImpl(this._self, this._then);

  final FormCadastroState _self;
  final $Res Function(FormCadastroState) _then;

/// Create a copy of FormCadastroState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? nome = null,Object? sobrenome = null,Object? email = null,Object? senha = null,Object? isLoading = null,Object? isSucesso = null,Object? erro = freezed,Object? erroEmail = freezed,Object? erroNome = freezed,Object? erroSobrenome = freezed,Object? erroSenha = freezed,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,sobrenome: null == sobrenome ? _self.sobrenome : sobrenome // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,senha: null == senha ? _self.senha : senha // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucesso: null == isSucesso ? _self.isSucesso : isSucesso // ignore: cast_nullable_to_non_nullable
as bool,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroEmail: freezed == erroEmail ? _self.erroEmail : erroEmail // ignore: cast_nullable_to_non_nullable
as String?,erroNome: freezed == erroNome ? _self.erroNome : erroNome // ignore: cast_nullable_to_non_nullable
as String?,erroSobrenome: freezed == erroSobrenome ? _self.erroSobrenome : erroSobrenome // ignore: cast_nullable_to_non_nullable
as String?,erroSenha: freezed == erroSenha ? _self.erroSenha : erroSenha // ignore: cast_nullable_to_non_nullable
as String?,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FormCadastroState].
extension FormCadastroStatePatterns on FormCadastroState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FormCadastroState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FormCadastroState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FormCadastroState value)  $default,){
final _that = this;
switch (_that) {
case _FormCadastroState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FormCadastroState value)?  $default,){
final _that = this;
switch (_that) {
case _FormCadastroState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String nome,  String sobrenome,  String email,  String senha,  bool isLoading,  bool isSucesso,  String? erro,  String? erroEmail,  String? erroNome,  String? erroSobrenome,  String? erroSenha,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FormCadastroState() when $default != null:
return $default(_that.id,_that.nome,_that.sobrenome,_that.email,_that.senha,_that.isLoading,_that.isSucesso,_that.erro,_that.erroEmail,_that.erroNome,_that.erroSobrenome,_that.erroSenha,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String nome,  String sobrenome,  String email,  String senha,  bool isLoading,  bool isSucesso,  String? erro,  String? erroEmail,  String? erroNome,  String? erroSobrenome,  String? erroSenha,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _FormCadastroState():
return $default(_that.id,_that.nome,_that.sobrenome,_that.email,_that.senha,_that.isLoading,_that.isSucesso,_that.erro,_that.erroEmail,_that.erroNome,_that.erroSobrenome,_that.erroSenha,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String nome,  String sobrenome,  String email,  String senha,  bool isLoading,  bool isSucesso,  String? erro,  String? erroEmail,  String? erroNome,  String? erroSobrenome,  String? erroSenha,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _FormCadastroState() when $default != null:
return $default(_that.id,_that.nome,_that.sobrenome,_that.email,_that.senha,_that.isLoading,_that.isSucesso,_that.erro,_that.erroEmail,_that.erroNome,_that.erroSobrenome,_that.erroSenha,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _FormCadastroState implements FormCadastroState {
  const _FormCadastroState({this.id, this.nome = '', this.sobrenome = '', this.email = '', this.senha = '', this.isLoading = false, this.isSucesso = false, this.erro, this.erroEmail, this.erroNome, this.erroSobrenome, this.erroSenha, this.camposValidos = false});
  

@override final  String? id;
@override@JsonKey() final  String nome;
@override@JsonKey() final  String sobrenome;
@override@JsonKey() final  String email;
@override@JsonKey() final  String senha;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSucesso;
@override final  String? erro;
@override final  String? erroEmail;
@override final  String? erroNome;
@override final  String? erroSobrenome;
@override final  String? erroSenha;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of FormCadastroState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FormCadastroStateCopyWith<_FormCadastroState> get copyWith => __$FormCadastroStateCopyWithImpl<_FormCadastroState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormCadastroState&&(identical(other.id, id) || other.id == id)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.sobrenome, sobrenome) || other.sobrenome == sobrenome)&&(identical(other.email, email) || other.email == email)&&(identical(other.senha, senha) || other.senha == senha)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucesso, isSucesso) || other.isSucesso == isSucesso)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroEmail, erroEmail) || other.erroEmail == erroEmail)&&(identical(other.erroNome, erroNome) || other.erroNome == erroNome)&&(identical(other.erroSobrenome, erroSobrenome) || other.erroSobrenome == erroSobrenome)&&(identical(other.erroSenha, erroSenha) || other.erroSenha == erroSenha)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,id,nome,sobrenome,email,senha,isLoading,isSucesso,erro,erroEmail,erroNome,erroSobrenome,erroSenha,camposValidos);

@override
String toString() {
  return 'FormCadastroState(id: $id, nome: $nome, sobrenome: $sobrenome, email: $email, senha: $senha, isLoading: $isLoading, isSucesso: $isSucesso, erro: $erro, erroEmail: $erroEmail, erroNome: $erroNome, erroSobrenome: $erroSobrenome, erroSenha: $erroSenha, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$FormCadastroStateCopyWith<$Res> implements $FormCadastroStateCopyWith<$Res> {
  factory _$FormCadastroStateCopyWith(_FormCadastroState value, $Res Function(_FormCadastroState) _then) = __$FormCadastroStateCopyWithImpl;
@override @useResult
$Res call({
 String? id, String nome, String sobrenome, String email, String senha, bool isLoading, bool isSucesso, String? erro, String? erroEmail, String? erroNome, String? erroSobrenome, String? erroSenha, bool camposValidos
});




}
/// @nodoc
class __$FormCadastroStateCopyWithImpl<$Res>
    implements _$FormCadastroStateCopyWith<$Res> {
  __$FormCadastroStateCopyWithImpl(this._self, this._then);

  final _FormCadastroState _self;
  final $Res Function(_FormCadastroState) _then;

/// Create a copy of FormCadastroState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? nome = null,Object? sobrenome = null,Object? email = null,Object? senha = null,Object? isLoading = null,Object? isSucesso = null,Object? erro = freezed,Object? erroEmail = freezed,Object? erroNome = freezed,Object? erroSobrenome = freezed,Object? erroSenha = freezed,Object? camposValidos = null,}) {
  return _then(_FormCadastroState(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,sobrenome: null == sobrenome ? _self.sobrenome : sobrenome // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,senha: null == senha ? _self.senha : senha // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucesso: null == isSucesso ? _self.isSucesso : isSucesso // ignore: cast_nullable_to_non_nullable
as bool,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroEmail: freezed == erroEmail ? _self.erroEmail : erroEmail // ignore: cast_nullable_to_non_nullable
as String?,erroNome: freezed == erroNome ? _self.erroNome : erroNome // ignore: cast_nullable_to_non_nullable
as String?,erroSobrenome: freezed == erroSobrenome ? _self.erroSobrenome : erroSobrenome // ignore: cast_nullable_to_non_nullable
as String?,erroSenha: freezed == erroSenha ? _self.erroSenha : erroSenha // ignore: cast_nullable_to_non_nullable
as String?,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
