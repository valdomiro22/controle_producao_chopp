// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lista_producoes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListaProducaoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListaProducaoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListaProducaoState()';
}


}

/// @nodoc
class $ListaProducaoStateCopyWith<$Res>  {
$ListaProducaoStateCopyWith(ListaProducaoState _, $Res Function(ListaProducaoState) __);
}


/// Adds pattern-matching-related methods to [ListaProducaoState].
extension ListaProducaoStatePatterns on ListaProducaoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Inicial value)?  inicial,TResult Function( _Carregando value)?  carregando,TResult Function( _SucessoComLista value)?  sucessoComLista,TResult Function( _Sucesso value)?  sucesso,TResult Function( _Erro value)?  erro,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Inicial() when inicial != null:
return inicial(_that);case _Carregando() when carregando != null:
return carregando(_that);case _SucessoComLista() when sucessoComLista != null:
return sucessoComLista(_that);case _Sucesso() when sucesso != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Inicial value)  inicial,required TResult Function( _Carregando value)  carregando,required TResult Function( _SucessoComLista value)  sucessoComLista,required TResult Function( _Sucesso value)  sucesso,required TResult Function( _Erro value)  erro,}){
final _that = this;
switch (_that) {
case _Inicial():
return inicial(_that);case _Carregando():
return carregando(_that);case _SucessoComLista():
return sucessoComLista(_that);case _Sucesso():
return sucesso(_that);case _Erro():
return erro(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Inicial value)?  inicial,TResult? Function( _Carregando value)?  carregando,TResult? Function( _SucessoComLista value)?  sucessoComLista,TResult? Function( _Sucesso value)?  sucesso,TResult? Function( _Erro value)?  erro,}){
final _that = this;
switch (_that) {
case _Inicial() when inicial != null:
return inicial(_that);case _Carregando() when carregando != null:
return carregando(_that);case _SucessoComLista() when sucessoComLista != null:
return sucessoComLista(_that);case _Sucesso() when sucesso != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  inicial,TResult Function()?  carregando,TResult Function( List<ProducaoEntity> lista)?  sucessoComLista,TResult Function()?  sucesso,TResult Function( Failure failure)?  erro,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Inicial() when inicial != null:
return inicial();case _Carregando() when carregando != null:
return carregando();case _SucessoComLista() when sucessoComLista != null:
return sucessoComLista(_that.lista);case _Sucesso() when sucesso != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  inicial,required TResult Function()  carregando,required TResult Function( List<ProducaoEntity> lista)  sucessoComLista,required TResult Function()  sucesso,required TResult Function( Failure failure)  erro,}) {final _that = this;
switch (_that) {
case _Inicial():
return inicial();case _Carregando():
return carregando();case _SucessoComLista():
return sucessoComLista(_that.lista);case _Sucesso():
return sucesso();case _Erro():
return erro(_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  inicial,TResult? Function()?  carregando,TResult? Function( List<ProducaoEntity> lista)?  sucessoComLista,TResult? Function()?  sucesso,TResult? Function( Failure failure)?  erro,}) {final _that = this;
switch (_that) {
case _Inicial() when inicial != null:
return inicial();case _Carregando() when carregando != null:
return carregando();case _SucessoComLista() when sucessoComLista != null:
return sucessoComLista(_that.lista);case _Sucesso() when sucesso != null:
return sucesso();case _Erro() when erro != null:
return erro(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _Inicial implements ListaProducaoState {
  const _Inicial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Inicial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListaProducaoState.inicial()';
}


}




/// @nodoc


class _Carregando implements ListaProducaoState {
  const _Carregando();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Carregando);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListaProducaoState.carregando()';
}


}




/// @nodoc


class _SucessoComLista implements ListaProducaoState {
  const _SucessoComLista(final  List<ProducaoEntity> lista): _lista = lista;
  

 final  List<ProducaoEntity> _lista;
 List<ProducaoEntity> get lista {
  if (_lista is EqualUnmodifiableListView) return _lista;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lista);
}


/// Create a copy of ListaProducaoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SucessoComListaCopyWith<_SucessoComLista> get copyWith => __$SucessoComListaCopyWithImpl<_SucessoComLista>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SucessoComLista&&const DeepCollectionEquality().equals(other._lista, _lista));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lista));

@override
String toString() {
  return 'ListaProducaoState.sucessoComLista(lista: $lista)';
}


}

/// @nodoc
abstract mixin class _$SucessoComListaCopyWith<$Res> implements $ListaProducaoStateCopyWith<$Res> {
  factory _$SucessoComListaCopyWith(_SucessoComLista value, $Res Function(_SucessoComLista) _then) = __$SucessoComListaCopyWithImpl;
@useResult
$Res call({
 List<ProducaoEntity> lista
});




}
/// @nodoc
class __$SucessoComListaCopyWithImpl<$Res>
    implements _$SucessoComListaCopyWith<$Res> {
  __$SucessoComListaCopyWithImpl(this._self, this._then);

  final _SucessoComLista _self;
  final $Res Function(_SucessoComLista) _then;

/// Create a copy of ListaProducaoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lista = null,}) {
  return _then(_SucessoComLista(
null == lista ? _self._lista : lista // ignore: cast_nullable_to_non_nullable
as List<ProducaoEntity>,
  ));
}


}

/// @nodoc


class _Sucesso implements ListaProducaoState {
  const _Sucesso();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sucesso);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListaProducaoState.sucesso()';
}


}




/// @nodoc


class _Erro implements ListaProducaoState {
  const _Erro(this.failure);
  

 final  Failure failure;

/// Create a copy of ListaProducaoState
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
  return 'ListaProducaoState.erro(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$ErroCopyWith<$Res> implements $ListaProducaoStateCopyWith<$Res> {
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

/// Create a copy of ListaProducaoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_Erro(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
