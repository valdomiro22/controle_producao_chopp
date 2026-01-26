// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_adicionar_producao_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FormAdicionarProducaoState {

 Produto? get produto; Barril? get barril; String? get quantidade; String get horarioReferente; DateTime? get data; String? get erro; String? get erroProduto; String? get erroBarril; String? get erroQuantidade; String? get erroGeral; String? get erroData; bool get isLoading; bool get isSucess; bool get camposValidos;
/// Create a copy of FormAdicionarProducaoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormAdicionarProducaoStateCopyWith<FormAdicionarProducaoState> get copyWith => _$FormAdicionarProducaoStateCopyWithImpl<FormAdicionarProducaoState>(this as FormAdicionarProducaoState, _$identity);

  /// Serializes this FormAdicionarProducaoState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormAdicionarProducaoState&&(identical(other.produto, produto) || other.produto == produto)&&(identical(other.barril, barril) || other.barril == barril)&&(identical(other.quantidade, quantidade) || other.quantidade == quantidade)&&(identical(other.horarioReferente, horarioReferente) || other.horarioReferente == horarioReferente)&&(identical(other.data, data) || other.data == data)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroProduto, erroProduto) || other.erroProduto == erroProduto)&&(identical(other.erroBarril, erroBarril) || other.erroBarril == erroBarril)&&(identical(other.erroQuantidade, erroQuantidade) || other.erroQuantidade == erroQuantidade)&&(identical(other.erroGeral, erroGeral) || other.erroGeral == erroGeral)&&(identical(other.erroData, erroData) || other.erroData == erroData)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,produto,barril,quantidade,horarioReferente,data,erro,erroProduto,erroBarril,erroQuantidade,erroGeral,erroData,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'FormAdicionarProducaoState(produto: $produto, barril: $barril, quantidade: $quantidade, horarioReferente: $horarioReferente, data: $data, erro: $erro, erroProduto: $erroProduto, erroBarril: $erroBarril, erroQuantidade: $erroQuantidade, erroGeral: $erroGeral, erroData: $erroData, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $FormAdicionarProducaoStateCopyWith<$Res>  {
  factory $FormAdicionarProducaoStateCopyWith(FormAdicionarProducaoState value, $Res Function(FormAdicionarProducaoState) _then) = _$FormAdicionarProducaoStateCopyWithImpl;
@useResult
$Res call({
 Produto? produto, Barril? barril, String? quantidade, String horarioReferente, DateTime? data, String? erro, String? erroProduto, String? erroBarril, String? erroQuantidade, String? erroGeral, String? erroData, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class _$FormAdicionarProducaoStateCopyWithImpl<$Res>
    implements $FormAdicionarProducaoStateCopyWith<$Res> {
  _$FormAdicionarProducaoStateCopyWithImpl(this._self, this._then);

  final FormAdicionarProducaoState _self;
  final $Res Function(FormAdicionarProducaoState) _then;

/// Create a copy of FormAdicionarProducaoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? produto = freezed,Object? barril = freezed,Object? quantidade = freezed,Object? horarioReferente = null,Object? data = freezed,Object? erro = freezed,Object? erroProduto = freezed,Object? erroBarril = freezed,Object? erroQuantidade = freezed,Object? erroGeral = freezed,Object? erroData = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
produto: freezed == produto ? _self.produto : produto // ignore: cast_nullable_to_non_nullable
as Produto?,barril: freezed == barril ? _self.barril : barril // ignore: cast_nullable_to_non_nullable
as Barril?,quantidade: freezed == quantidade ? _self.quantidade : quantidade // ignore: cast_nullable_to_non_nullable
as String?,horarioReferente: null == horarioReferente ? _self.horarioReferente : horarioReferente // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DateTime?,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroProduto: freezed == erroProduto ? _self.erroProduto : erroProduto // ignore: cast_nullable_to_non_nullable
as String?,erroBarril: freezed == erroBarril ? _self.erroBarril : erroBarril // ignore: cast_nullable_to_non_nullable
as String?,erroQuantidade: freezed == erroQuantidade ? _self.erroQuantidade : erroQuantidade // ignore: cast_nullable_to_non_nullable
as String?,erroGeral: freezed == erroGeral ? _self.erroGeral : erroGeral // ignore: cast_nullable_to_non_nullable
as String?,erroData: freezed == erroData ? _self.erroData : erroData // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FormAdicionarProducaoState].
extension FormAdicionarProducaoStatePatterns on FormAdicionarProducaoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FormAdicionarProducaoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FormAdicionarProducaoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FormAdicionarProducaoState value)  $default,){
final _that = this;
switch (_that) {
case _FormAdicionarProducaoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FormAdicionarProducaoState value)?  $default,){
final _that = this;
switch (_that) {
case _FormAdicionarProducaoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Produto? produto,  Barril? barril,  String? quantidade,  String horarioReferente,  DateTime? data,  String? erro,  String? erroProduto,  String? erroBarril,  String? erroQuantidade,  String? erroGeral,  String? erroData,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FormAdicionarProducaoState() when $default != null:
return $default(_that.produto,_that.barril,_that.quantidade,_that.horarioReferente,_that.data,_that.erro,_that.erroProduto,_that.erroBarril,_that.erroQuantidade,_that.erroGeral,_that.erroData,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Produto? produto,  Barril? barril,  String? quantidade,  String horarioReferente,  DateTime? data,  String? erro,  String? erroProduto,  String? erroBarril,  String? erroQuantidade,  String? erroGeral,  String? erroData,  bool isLoading,  bool isSucess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _FormAdicionarProducaoState():
return $default(_that.produto,_that.barril,_that.quantidade,_that.horarioReferente,_that.data,_that.erro,_that.erroProduto,_that.erroBarril,_that.erroQuantidade,_that.erroGeral,_that.erroData,_that.isLoading,_that.isSucess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Produto? produto,  Barril? barril,  String? quantidade,  String horarioReferente,  DateTime? data,  String? erro,  String? erroProduto,  String? erroBarril,  String? erroQuantidade,  String? erroGeral,  String? erroData,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _FormAdicionarProducaoState() when $default != null:
return $default(_that.produto,_that.barril,_that.quantidade,_that.horarioReferente,_that.data,_that.erro,_that.erroProduto,_that.erroBarril,_that.erroQuantidade,_that.erroGeral,_that.erroData,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FormAdicionarProducaoState implements FormAdicionarProducaoState {
  const _FormAdicionarProducaoState({this.produto, this.barril, this.quantidade, this.horarioReferente = '', this.data, this.erro, this.erroProduto, this.erroBarril, this.erroQuantidade, this.erroGeral, this.erroData, this.isLoading = false, this.isSucess = false, this.camposValidos = false});
  factory _FormAdicionarProducaoState.fromJson(Map<String, dynamic> json) => _$FormAdicionarProducaoStateFromJson(json);

@override final  Produto? produto;
@override final  Barril? barril;
@override final  String? quantidade;
@override@JsonKey() final  String horarioReferente;
@override final  DateTime? data;
@override final  String? erro;
@override final  String? erroProduto;
@override final  String? erroBarril;
@override final  String? erroQuantidade;
@override final  String? erroGeral;
@override final  String? erroData;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSucess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of FormAdicionarProducaoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FormAdicionarProducaoStateCopyWith<_FormAdicionarProducaoState> get copyWith => __$FormAdicionarProducaoStateCopyWithImpl<_FormAdicionarProducaoState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormAdicionarProducaoStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormAdicionarProducaoState&&(identical(other.produto, produto) || other.produto == produto)&&(identical(other.barril, barril) || other.barril == barril)&&(identical(other.quantidade, quantidade) || other.quantidade == quantidade)&&(identical(other.horarioReferente, horarioReferente) || other.horarioReferente == horarioReferente)&&(identical(other.data, data) || other.data == data)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroProduto, erroProduto) || other.erroProduto == erroProduto)&&(identical(other.erroBarril, erroBarril) || other.erroBarril == erroBarril)&&(identical(other.erroQuantidade, erroQuantidade) || other.erroQuantidade == erroQuantidade)&&(identical(other.erroGeral, erroGeral) || other.erroGeral == erroGeral)&&(identical(other.erroData, erroData) || other.erroData == erroData)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,produto,barril,quantidade,horarioReferente,data,erro,erroProduto,erroBarril,erroQuantidade,erroGeral,erroData,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'FormAdicionarProducaoState(produto: $produto, barril: $barril, quantidade: $quantidade, horarioReferente: $horarioReferente, data: $data, erro: $erro, erroProduto: $erroProduto, erroBarril: $erroBarril, erroQuantidade: $erroQuantidade, erroGeral: $erroGeral, erroData: $erroData, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$FormAdicionarProducaoStateCopyWith<$Res> implements $FormAdicionarProducaoStateCopyWith<$Res> {
  factory _$FormAdicionarProducaoStateCopyWith(_FormAdicionarProducaoState value, $Res Function(_FormAdicionarProducaoState) _then) = __$FormAdicionarProducaoStateCopyWithImpl;
@override @useResult
$Res call({
 Produto? produto, Barril? barril, String? quantidade, String horarioReferente, DateTime? data, String? erro, String? erroProduto, String? erroBarril, String? erroQuantidade, String? erroGeral, String? erroData, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class __$FormAdicionarProducaoStateCopyWithImpl<$Res>
    implements _$FormAdicionarProducaoStateCopyWith<$Res> {
  __$FormAdicionarProducaoStateCopyWithImpl(this._self, this._then);

  final _FormAdicionarProducaoState _self;
  final $Res Function(_FormAdicionarProducaoState) _then;

/// Create a copy of FormAdicionarProducaoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? produto = freezed,Object? barril = freezed,Object? quantidade = freezed,Object? horarioReferente = null,Object? data = freezed,Object? erro = freezed,Object? erroProduto = freezed,Object? erroBarril = freezed,Object? erroQuantidade = freezed,Object? erroGeral = freezed,Object? erroData = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_FormAdicionarProducaoState(
produto: freezed == produto ? _self.produto : produto // ignore: cast_nullable_to_non_nullable
as Produto?,barril: freezed == barril ? _self.barril : barril // ignore: cast_nullable_to_non_nullable
as Barril?,quantidade: freezed == quantidade ? _self.quantidade : quantidade // ignore: cast_nullable_to_non_nullable
as String?,horarioReferente: null == horarioReferente ? _self.horarioReferente : horarioReferente // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DateTime?,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroProduto: freezed == erroProduto ? _self.erroProduto : erroProduto // ignore: cast_nullable_to_non_nullable
as String?,erroBarril: freezed == erroBarril ? _self.erroBarril : erroBarril // ignore: cast_nullable_to_non_nullable
as String?,erroQuantidade: freezed == erroQuantidade ? _self.erroQuantidade : erroQuantidade // ignore: cast_nullable_to_non_nullable
as String?,erroGeral: freezed == erroGeral ? _self.erroGeral : erroGeral // ignore: cast_nullable_to_non_nullable
as String?,erroData: freezed == erroData ? _self.erroData : erroData // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
