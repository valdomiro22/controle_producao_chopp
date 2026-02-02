// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anotacao_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnotacaoModel {

 String? get id; String get producaoId; String get gradeId; String get codigo; String get usuarioId; String get nomeUsuario; Turno get turno; DateTime get data; DateTime get horario; int get horarioId; DateTime? get dataEdicao; DateTime? get horarioEdicao; TipoCodigo get tipoCodigo; String? get observacao;
/// Create a copy of AnotacaoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnotacaoModelCopyWith<AnotacaoModel> get copyWith => _$AnotacaoModelCopyWithImpl<AnotacaoModel>(this as AnotacaoModel, _$identity);

  /// Serializes this AnotacaoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnotacaoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.producaoId, producaoId) || other.producaoId == producaoId)&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.codigo, codigo) || other.codigo == codigo)&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.nomeUsuario, nomeUsuario) || other.nomeUsuario == nomeUsuario)&&(identical(other.turno, turno) || other.turno == turno)&&(identical(other.data, data) || other.data == data)&&(identical(other.horario, horario) || other.horario == horario)&&(identical(other.horarioId, horarioId) || other.horarioId == horarioId)&&(identical(other.dataEdicao, dataEdicao) || other.dataEdicao == dataEdicao)&&(identical(other.horarioEdicao, horarioEdicao) || other.horarioEdicao == horarioEdicao)&&(identical(other.tipoCodigo, tipoCodigo) || other.tipoCodigo == tipoCodigo)&&(identical(other.observacao, observacao) || other.observacao == observacao));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,producaoId,gradeId,codigo,usuarioId,nomeUsuario,turno,data,horario,horarioId,dataEdicao,horarioEdicao,tipoCodigo,observacao);

@override
String toString() {
  return 'AnotacaoModel(id: $id, producaoId: $producaoId, gradeId: $gradeId, codigo: $codigo, usuarioId: $usuarioId, nomeUsuario: $nomeUsuario, turno: $turno, data: $data, horario: $horario, horarioId: $horarioId, dataEdicao: $dataEdicao, horarioEdicao: $horarioEdicao, tipoCodigo: $tipoCodigo, observacao: $observacao)';
}


}

/// @nodoc
abstract mixin class $AnotacaoModelCopyWith<$Res>  {
  factory $AnotacaoModelCopyWith(AnotacaoModel value, $Res Function(AnotacaoModel) _then) = _$AnotacaoModelCopyWithImpl;
@useResult
$Res call({
 String? id, String producaoId, String gradeId, String codigo, String usuarioId, String nomeUsuario, Turno turno, DateTime data, DateTime horario, int horarioId, DateTime? dataEdicao, DateTime? horarioEdicao, TipoCodigo tipoCodigo, String? observacao
});




}
/// @nodoc
class _$AnotacaoModelCopyWithImpl<$Res>
    implements $AnotacaoModelCopyWith<$Res> {
  _$AnotacaoModelCopyWithImpl(this._self, this._then);

  final AnotacaoModel _self;
  final $Res Function(AnotacaoModel) _then;

/// Create a copy of AnotacaoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? producaoId = null,Object? gradeId = null,Object? codigo = null,Object? usuarioId = null,Object? nomeUsuario = null,Object? turno = null,Object? data = null,Object? horario = null,Object? horarioId = null,Object? dataEdicao = freezed,Object? horarioEdicao = freezed,Object? tipoCodigo = null,Object? observacao = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,producaoId: null == producaoId ? _self.producaoId : producaoId // ignore: cast_nullable_to_non_nullable
as String,gradeId: null == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as String,codigo: null == codigo ? _self.codigo : codigo // ignore: cast_nullable_to_non_nullable
as String,usuarioId: null == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String,nomeUsuario: null == nomeUsuario ? _self.nomeUsuario : nomeUsuario // ignore: cast_nullable_to_non_nullable
as String,turno: null == turno ? _self.turno : turno // ignore: cast_nullable_to_non_nullable
as Turno,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DateTime,horario: null == horario ? _self.horario : horario // ignore: cast_nullable_to_non_nullable
as DateTime,horarioId: null == horarioId ? _self.horarioId : horarioId // ignore: cast_nullable_to_non_nullable
as int,dataEdicao: freezed == dataEdicao ? _self.dataEdicao : dataEdicao // ignore: cast_nullable_to_non_nullable
as DateTime?,horarioEdicao: freezed == horarioEdicao ? _self.horarioEdicao : horarioEdicao // ignore: cast_nullable_to_non_nullable
as DateTime?,tipoCodigo: null == tipoCodigo ? _self.tipoCodigo : tipoCodigo // ignore: cast_nullable_to_non_nullable
as TipoCodigo,observacao: freezed == observacao ? _self.observacao : observacao // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AnotacaoModel].
extension AnotacaoModelPatterns on AnotacaoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnotacaoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnotacaoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnotacaoModel value)  $default,){
final _that = this;
switch (_that) {
case _AnotacaoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnotacaoModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnotacaoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String producaoId,  String gradeId,  String codigo,  String usuarioId,  String nomeUsuario,  Turno turno,  DateTime data,  DateTime horario,  int horarioId,  DateTime? dataEdicao,  DateTime? horarioEdicao,  TipoCodigo tipoCodigo,  String? observacao)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnotacaoModel() when $default != null:
return $default(_that.id,_that.producaoId,_that.gradeId,_that.codigo,_that.usuarioId,_that.nomeUsuario,_that.turno,_that.data,_that.horario,_that.horarioId,_that.dataEdicao,_that.horarioEdicao,_that.tipoCodigo,_that.observacao);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String producaoId,  String gradeId,  String codigo,  String usuarioId,  String nomeUsuario,  Turno turno,  DateTime data,  DateTime horario,  int horarioId,  DateTime? dataEdicao,  DateTime? horarioEdicao,  TipoCodigo tipoCodigo,  String? observacao)  $default,) {final _that = this;
switch (_that) {
case _AnotacaoModel():
return $default(_that.id,_that.producaoId,_that.gradeId,_that.codigo,_that.usuarioId,_that.nomeUsuario,_that.turno,_that.data,_that.horario,_that.horarioId,_that.dataEdicao,_that.horarioEdicao,_that.tipoCodigo,_that.observacao);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String producaoId,  String gradeId,  String codigo,  String usuarioId,  String nomeUsuario,  Turno turno,  DateTime data,  DateTime horario,  int horarioId,  DateTime? dataEdicao,  DateTime? horarioEdicao,  TipoCodigo tipoCodigo,  String? observacao)?  $default,) {final _that = this;
switch (_that) {
case _AnotacaoModel() when $default != null:
return $default(_that.id,_that.producaoId,_that.gradeId,_that.codigo,_that.usuarioId,_that.nomeUsuario,_that.turno,_that.data,_that.horario,_that.horarioId,_that.dataEdicao,_that.horarioEdicao,_that.tipoCodigo,_that.observacao);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnotacaoModel extends AnotacaoModel {
  const _AnotacaoModel({this.id, required this.producaoId, required this.gradeId, required this.codigo, required this.usuarioId, required this.nomeUsuario, required this.turno, required this.data, required this.horario, required this.horarioId, this.dataEdicao, this.horarioEdicao, required this.tipoCodigo, this.observacao}): super._();
  factory _AnotacaoModel.fromJson(Map<String, dynamic> json) => _$AnotacaoModelFromJson(json);

@override final  String? id;
@override final  String producaoId;
@override final  String gradeId;
@override final  String codigo;
@override final  String usuarioId;
@override final  String nomeUsuario;
@override final  Turno turno;
@override final  DateTime data;
@override final  DateTime horario;
@override final  int horarioId;
@override final  DateTime? dataEdicao;
@override final  DateTime? horarioEdicao;
@override final  TipoCodigo tipoCodigo;
@override final  String? observacao;

/// Create a copy of AnotacaoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnotacaoModelCopyWith<_AnotacaoModel> get copyWith => __$AnotacaoModelCopyWithImpl<_AnotacaoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnotacaoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnotacaoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.producaoId, producaoId) || other.producaoId == producaoId)&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.codigo, codigo) || other.codigo == codigo)&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.nomeUsuario, nomeUsuario) || other.nomeUsuario == nomeUsuario)&&(identical(other.turno, turno) || other.turno == turno)&&(identical(other.data, data) || other.data == data)&&(identical(other.horario, horario) || other.horario == horario)&&(identical(other.horarioId, horarioId) || other.horarioId == horarioId)&&(identical(other.dataEdicao, dataEdicao) || other.dataEdicao == dataEdicao)&&(identical(other.horarioEdicao, horarioEdicao) || other.horarioEdicao == horarioEdicao)&&(identical(other.tipoCodigo, tipoCodigo) || other.tipoCodigo == tipoCodigo)&&(identical(other.observacao, observacao) || other.observacao == observacao));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,producaoId,gradeId,codigo,usuarioId,nomeUsuario,turno,data,horario,horarioId,dataEdicao,horarioEdicao,tipoCodigo,observacao);

@override
String toString() {
  return 'AnotacaoModel(id: $id, producaoId: $producaoId, gradeId: $gradeId, codigo: $codigo, usuarioId: $usuarioId, nomeUsuario: $nomeUsuario, turno: $turno, data: $data, horario: $horario, horarioId: $horarioId, dataEdicao: $dataEdicao, horarioEdicao: $horarioEdicao, tipoCodigo: $tipoCodigo, observacao: $observacao)';
}


}

/// @nodoc
abstract mixin class _$AnotacaoModelCopyWith<$Res> implements $AnotacaoModelCopyWith<$Res> {
  factory _$AnotacaoModelCopyWith(_AnotacaoModel value, $Res Function(_AnotacaoModel) _then) = __$AnotacaoModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String producaoId, String gradeId, String codigo, String usuarioId, String nomeUsuario, Turno turno, DateTime data, DateTime horario, int horarioId, DateTime? dataEdicao, DateTime? horarioEdicao, TipoCodigo tipoCodigo, String? observacao
});




}
/// @nodoc
class __$AnotacaoModelCopyWithImpl<$Res>
    implements _$AnotacaoModelCopyWith<$Res> {
  __$AnotacaoModelCopyWithImpl(this._self, this._then);

  final _AnotacaoModel _self;
  final $Res Function(_AnotacaoModel) _then;

/// Create a copy of AnotacaoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? producaoId = null,Object? gradeId = null,Object? codigo = null,Object? usuarioId = null,Object? nomeUsuario = null,Object? turno = null,Object? data = null,Object? horario = null,Object? horarioId = null,Object? dataEdicao = freezed,Object? horarioEdicao = freezed,Object? tipoCodigo = null,Object? observacao = freezed,}) {
  return _then(_AnotacaoModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,producaoId: null == producaoId ? _self.producaoId : producaoId // ignore: cast_nullable_to_non_nullable
as String,gradeId: null == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as String,codigo: null == codigo ? _self.codigo : codigo // ignore: cast_nullable_to_non_nullable
as String,usuarioId: null == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String,nomeUsuario: null == nomeUsuario ? _self.nomeUsuario : nomeUsuario // ignore: cast_nullable_to_non_nullable
as String,turno: null == turno ? _self.turno : turno // ignore: cast_nullable_to_non_nullable
as Turno,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DateTime,horario: null == horario ? _self.horario : horario // ignore: cast_nullable_to_non_nullable
as DateTime,horarioId: null == horarioId ? _self.horarioId : horarioId // ignore: cast_nullable_to_non_nullable
as int,dataEdicao: freezed == dataEdicao ? _self.dataEdicao : dataEdicao // ignore: cast_nullable_to_non_nullable
as DateTime?,horarioEdicao: freezed == horarioEdicao ? _self.horarioEdicao : horarioEdicao // ignore: cast_nullable_to_non_nullable
as DateTime?,tipoCodigo: null == tipoCodigo ? _self.tipoCodigo : tipoCodigo // ignore: cast_nullable_to_non_nullable
as TipoCodigo,observacao: freezed == observacao ? _self.observacao : observacao // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
