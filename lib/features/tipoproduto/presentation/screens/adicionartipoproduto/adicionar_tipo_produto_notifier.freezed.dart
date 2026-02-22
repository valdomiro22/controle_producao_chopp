// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adicionar_tipo_produto_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdicionarTipoProdutoState {

 String get nome; int get prazoValidade; String? get erro; String? get erroNome; String? get erroValidade; bool get isLoading; bool get isSucess; bool get camposValidos;
/// Create a copy of AdicionarTipoProdutoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdicionarTipoProdutoStateCopyWith<AdicionarTipoProdutoState> get copyWith => _$AdicionarTipoProdutoStateCopyWithImpl<AdicionarTipoProdutoState>(this as AdicionarTipoProdutoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdicionarTipoProdutoState&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.prazoValidade, prazoValidade) || other.prazoValidade == prazoValidade)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroNome, erroNome) || other.erroNome == erroNome)&&(identical(other.erroValidade, erroValidade) || other.erroValidade == erroValidade)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,nome,prazoValidade,erro,erroNome,erroValidade,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'AdicionarTipoProdutoState(nome: $nome, prazoValidade: $prazoValidade, erro: $erro, erroNome: $erroNome, erroValidade: $erroValidade, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $AdicionarTipoProdutoStateCopyWith<$Res>  {
  factory $AdicionarTipoProdutoStateCopyWith(AdicionarTipoProdutoState value, $Res Function(AdicionarTipoProdutoState) _then) = _$AdicionarTipoProdutoStateCopyWithImpl;
@useResult
$Res call({
 String nome, int prazoValidade, String? erro, String? erroNome, String? erroValidade, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class _$AdicionarTipoProdutoStateCopyWithImpl<$Res>
    implements $AdicionarTipoProdutoStateCopyWith<$Res> {
  _$AdicionarTipoProdutoStateCopyWithImpl(this._self, this._then);

  final AdicionarTipoProdutoState _self;
  final $Res Function(AdicionarTipoProdutoState) _then;

/// Create a copy of AdicionarTipoProdutoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nome = null,Object? prazoValidade = null,Object? erro = freezed,Object? erroNome = freezed,Object? erroValidade = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,prazoValidade: null == prazoValidade ? _self.prazoValidade : prazoValidade // ignore: cast_nullable_to_non_nullable
as int,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroNome: freezed == erroNome ? _self.erroNome : erroNome // ignore: cast_nullable_to_non_nullable
as String?,erroValidade: freezed == erroValidade ? _self.erroValidade : erroValidade // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AdicionarTipoProdutoState].
extension AdicionarTipoProdutoStatePatterns on AdicionarTipoProdutoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdicionarTipoProdutoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdicionarTipoProdutoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdicionarTipoProdutoState value)  $default,){
final _that = this;
switch (_that) {
case _AdicionarTipoProdutoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdicionarTipoProdutoState value)?  $default,){
final _that = this;
switch (_that) {
case _AdicionarTipoProdutoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nome,  int prazoValidade,  String? erro,  String? erroNome,  String? erroValidade,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdicionarTipoProdutoState() when $default != null:
return $default(_that.nome,_that.prazoValidade,_that.erro,_that.erroNome,_that.erroValidade,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nome,  int prazoValidade,  String? erro,  String? erroNome,  String? erroValidade,  bool isLoading,  bool isSucess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _AdicionarTipoProdutoState():
return $default(_that.nome,_that.prazoValidade,_that.erro,_that.erroNome,_that.erroValidade,_that.isLoading,_that.isSucess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nome,  int prazoValidade,  String? erro,  String? erroNome,  String? erroValidade,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _AdicionarTipoProdutoState() when $default != null:
return $default(_that.nome,_that.prazoValidade,_that.erro,_that.erroNome,_that.erroValidade,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _AdicionarTipoProdutoState implements AdicionarTipoProdutoState {
  const _AdicionarTipoProdutoState({this.nome = '', this.prazoValidade = 0, this.erro, this.erroNome, this.erroValidade, this.isLoading = false, this.isSucess = false, this.camposValidos = false});
  

@override@JsonKey() final  String nome;
@override@JsonKey() final  int prazoValidade;
@override final  String? erro;
@override final  String? erroNome;
@override final  String? erroValidade;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSucess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of AdicionarTipoProdutoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdicionarTipoProdutoStateCopyWith<_AdicionarTipoProdutoState> get copyWith => __$AdicionarTipoProdutoStateCopyWithImpl<_AdicionarTipoProdutoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdicionarTipoProdutoState&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.prazoValidade, prazoValidade) || other.prazoValidade == prazoValidade)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroNome, erroNome) || other.erroNome == erroNome)&&(identical(other.erroValidade, erroValidade) || other.erroValidade == erroValidade)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,nome,prazoValidade,erro,erroNome,erroValidade,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'AdicionarTipoProdutoState(nome: $nome, prazoValidade: $prazoValidade, erro: $erro, erroNome: $erroNome, erroValidade: $erroValidade, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$AdicionarTipoProdutoStateCopyWith<$Res> implements $AdicionarTipoProdutoStateCopyWith<$Res> {
  factory _$AdicionarTipoProdutoStateCopyWith(_AdicionarTipoProdutoState value, $Res Function(_AdicionarTipoProdutoState) _then) = __$AdicionarTipoProdutoStateCopyWithImpl;
@override @useResult
$Res call({
 String nome, int prazoValidade, String? erro, String? erroNome, String? erroValidade, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class __$AdicionarTipoProdutoStateCopyWithImpl<$Res>
    implements _$AdicionarTipoProdutoStateCopyWith<$Res> {
  __$AdicionarTipoProdutoStateCopyWithImpl(this._self, this._then);

  final _AdicionarTipoProdutoState _self;
  final $Res Function(_AdicionarTipoProdutoState) _then;

/// Create a copy of AdicionarTipoProdutoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nome = null,Object? prazoValidade = null,Object? erro = freezed,Object? erroNome = freezed,Object? erroValidade = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_AdicionarTipoProdutoState(
nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,prazoValidade: null == prazoValidade ? _self.prazoValidade : prazoValidade // ignore: cast_nullable_to_non_nullable
as int,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroNome: freezed == erroNome ? _self.erroNome : erroNome // ignore: cast_nullable_to_non_nullable
as String?,erroValidade: freezed == erroValidade ? _self.erroValidade : erroValidade // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
