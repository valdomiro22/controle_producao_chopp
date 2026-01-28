// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buscar_producao_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BuscarProducaoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BuscarProducaoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BuscarProducaoState()';
}


}

/// @nodoc
class $BuscarProducaoStateCopyWith<$Res>  {
$BuscarProducaoStateCopyWith(BuscarProducaoState _, $Res Function(BuscarProducaoState) __);
}


/// Adds pattern-matching-related methods to [BuscarProducaoState].
extension BuscarProducaoStatePatterns on BuscarProducaoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Inicial value)?  inicial,TResult Function( _Carregando value)?  carregando,TResult Function( _SucessoComDados value)?  sucessoComDados,TResult Function( _Sucesso value)?  sucesso,TResult Function( _Erro value)?  erro,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Inicial() when inicial != null:
return inicial(_that);case _Carregando() when carregando != null:
return carregando(_that);case _SucessoComDados() when sucessoComDados != null:
return sucessoComDados(_that);case _Sucesso() when sucesso != null:
return sucesso(_that);case _Erro() when erro != null:
return erro(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Inicial value)  inicial,required TResult Function( _Carregando value)  carregando,required TResult Function( _SucessoComDados value)  sucessoComDados,required TResult Function( _Sucesso value)  sucesso,required TResult Function( _Erro value)  erro,}){
final _that = this;
switch (_that) {
case _Inicial():
return inicial(_that);case _Carregando():
return carregando(_that);case _SucessoComDados():
return sucessoComDados(_that);case _Sucesso():
return sucesso(_that);case _Erro():
return erro(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Inicial value)?  inicial,TResult? Function( _Carregando value)?  carregando,TResult? Function( _SucessoComDados value)?  sucessoComDados,TResult? Function( _Sucesso value)?  sucesso,TResult? Function( _Erro value)?  erro,}){
final _that = this;
switch (_that) {
case _Inicial() when inicial != null:
return inicial(_that);case _Carregando() when carregando != null:
return carregando(_that);case _SucessoComDados() when sucessoComDados != null:
return sucessoComDados(_that);case _Sucesso() when sucesso != null:
return sucesso(_that);case _Erro() when erro != null:
return erro(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  inicial,TResult Function()?  carregando,TResult Function( ProducaoEntity producao)?  sucessoComDados,TResult Function()?  sucesso,TResult Function( Failure failure)?  erro,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Inicial() when inicial != null:
return inicial();case _Carregando() when carregando != null:
return carregando();case _SucessoComDados() when sucessoComDados != null:
return sucessoComDados(_that.producao);case _Sucesso() when sucesso != null:
return sucesso();case _Erro() when erro != null:
return erro(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  inicial,required TResult Function()  carregando,required TResult Function( ProducaoEntity producao)  sucessoComDados,required TResult Function()  sucesso,required TResult Function( Failure failure)  erro,}) {final _that = this;
switch (_that) {
case _Inicial():
return inicial();case _Carregando():
return carregando();case _SucessoComDados():
return sucessoComDados(_that.producao);case _Sucesso():
return sucesso();case _Erro():
return erro(_that.failure);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  inicial,TResult? Function()?  carregando,TResult? Function( ProducaoEntity producao)?  sucessoComDados,TResult? Function()?  sucesso,TResult? Function( Failure failure)?  erro,}) {final _that = this;
switch (_that) {
case _Inicial() when inicial != null:
return inicial();case _Carregando() when carregando != null:
return carregando();case _SucessoComDados() when sucessoComDados != null:
return sucessoComDados(_that.producao);case _Sucesso() when sucesso != null:
return sucesso();case _Erro() when erro != null:
return erro(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _Inicial implements BuscarProducaoState {
  const _Inicial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Inicial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BuscarProducaoState.inicial()';
}


}




/// @nodoc


class _Carregando implements BuscarProducaoState {
  const _Carregando();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Carregando);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BuscarProducaoState.carregando()';
}


}




/// @nodoc


class _SucessoComDados implements BuscarProducaoState {
  const _SucessoComDados(this.producao);
  

 final  ProducaoEntity producao;

/// Create a copy of BuscarProducaoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SucessoComDadosCopyWith<_SucessoComDados> get copyWith => __$SucessoComDadosCopyWithImpl<_SucessoComDados>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SucessoComDados&&(identical(other.producao, producao) || other.producao == producao));
}


@override
int get hashCode => Object.hash(runtimeType,producao);

@override
String toString() {
  return 'BuscarProducaoState.sucessoComDados(producao: $producao)';
}


}

/// @nodoc
abstract mixin class _$SucessoComDadosCopyWith<$Res> implements $BuscarProducaoStateCopyWith<$Res> {
  factory _$SucessoComDadosCopyWith(_SucessoComDados value, $Res Function(_SucessoComDados) _then) = __$SucessoComDadosCopyWithImpl;
@useResult
$Res call({
 ProducaoEntity producao
});




}
/// @nodoc
class __$SucessoComDadosCopyWithImpl<$Res>
    implements _$SucessoComDadosCopyWith<$Res> {
  __$SucessoComDadosCopyWithImpl(this._self, this._then);

  final _SucessoComDados _self;
  final $Res Function(_SucessoComDados) _then;

/// Create a copy of BuscarProducaoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? producao = null,}) {
  return _then(_SucessoComDados(
null == producao ? _self.producao : producao // ignore: cast_nullable_to_non_nullable
as ProducaoEntity,
  ));
}


}

/// @nodoc


class _Sucesso implements BuscarProducaoState {
  const _Sucesso();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sucesso);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BuscarProducaoState.sucesso()';
}


}




/// @nodoc


class _Erro implements BuscarProducaoState {
  const _Erro(this.failure);
  

 final  Failure failure;

/// Create a copy of BuscarProducaoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErroCopyWith<_Erro> get copyWith => __$ErroCopyWithImpl<_Erro>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Erro&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'BuscarProducaoState.erro(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$ErroCopyWith<$Res> implements $BuscarProducaoStateCopyWith<$Res> {
  factory _$ErroCopyWith(_Erro value, $Res Function(_Erro) _then) = __$ErroCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$ErroCopyWithImpl<$Res>
    implements _$ErroCopyWith<$Res> {
  __$ErroCopyWithImpl(this._self, this._then);

  final _Erro _self;
  final $Res Function(_Erro) _then;

/// Create a copy of BuscarProducaoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_Erro(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
