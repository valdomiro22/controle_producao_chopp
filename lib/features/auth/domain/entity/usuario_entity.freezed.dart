// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usuario_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UsuarioEntity {

 String? get id; String get nome; String get sobrenome; DateTime get adicionadoEm; String get email;
/// Create a copy of UsuarioEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsuarioEntityCopyWith<UsuarioEntity> get copyWith => _$UsuarioEntityCopyWithImpl<UsuarioEntity>(this as UsuarioEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsuarioEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.sobrenome, sobrenome) || other.sobrenome == sobrenome)&&(identical(other.adicionadoEm, adicionadoEm) || other.adicionadoEm == adicionadoEm)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,id,nome,sobrenome,adicionadoEm,email);

@override
String toString() {
  return 'UsuarioEntity(id: $id, nome: $nome, sobrenome: $sobrenome, adicionadoEm: $adicionadoEm, email: $email)';
}


}

/// @nodoc
abstract mixin class $UsuarioEntityCopyWith<$Res>  {
  factory $UsuarioEntityCopyWith(UsuarioEntity value, $Res Function(UsuarioEntity) _then) = _$UsuarioEntityCopyWithImpl;
@useResult
$Res call({
 String? id, String nome, String sobrenome, DateTime adicionadoEm, String email
});




}
/// @nodoc
class _$UsuarioEntityCopyWithImpl<$Res>
    implements $UsuarioEntityCopyWith<$Res> {
  _$UsuarioEntityCopyWithImpl(this._self, this._then);

  final UsuarioEntity _self;
  final $Res Function(UsuarioEntity) _then;

/// Create a copy of UsuarioEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? nome = null,Object? sobrenome = null,Object? adicionadoEm = null,Object? email = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,sobrenome: null == sobrenome ? _self.sobrenome : sobrenome // ignore: cast_nullable_to_non_nullable
as String,adicionadoEm: null == adicionadoEm ? _self.adicionadoEm : adicionadoEm // ignore: cast_nullable_to_non_nullable
as DateTime,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UsuarioEntity].
extension UsuarioEntityPatterns on UsuarioEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsuarioEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsuarioEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsuarioEntity value)  $default,){
final _that = this;
switch (_that) {
case _UsuarioEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsuarioEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UsuarioEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String nome,  String sobrenome,  DateTime adicionadoEm,  String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsuarioEntity() when $default != null:
return $default(_that.id,_that.nome,_that.sobrenome,_that.adicionadoEm,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String nome,  String sobrenome,  DateTime adicionadoEm,  String email)  $default,) {final _that = this;
switch (_that) {
case _UsuarioEntity():
return $default(_that.id,_that.nome,_that.sobrenome,_that.adicionadoEm,_that.email);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String nome,  String sobrenome,  DateTime adicionadoEm,  String email)?  $default,) {final _that = this;
switch (_that) {
case _UsuarioEntity() when $default != null:
return $default(_that.id,_that.nome,_that.sobrenome,_that.adicionadoEm,_that.email);case _:
  return null;

}
}

}

/// @nodoc


class _UsuarioEntity extends UsuarioEntity {
  const _UsuarioEntity({this.id, required this.nome, required this.sobrenome, required this.adicionadoEm, required this.email}): super._();
  

@override final  String? id;
@override final  String nome;
@override final  String sobrenome;
@override final  DateTime adicionadoEm;
@override final  String email;

/// Create a copy of UsuarioEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsuarioEntityCopyWith<_UsuarioEntity> get copyWith => __$UsuarioEntityCopyWithImpl<_UsuarioEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsuarioEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.sobrenome, sobrenome) || other.sobrenome == sobrenome)&&(identical(other.adicionadoEm, adicionadoEm) || other.adicionadoEm == adicionadoEm)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,id,nome,sobrenome,adicionadoEm,email);

@override
String toString() {
  return 'UsuarioEntity(id: $id, nome: $nome, sobrenome: $sobrenome, adicionadoEm: $adicionadoEm, email: $email)';
}


}

/// @nodoc
abstract mixin class _$UsuarioEntityCopyWith<$Res> implements $UsuarioEntityCopyWith<$Res> {
  factory _$UsuarioEntityCopyWith(_UsuarioEntity value, $Res Function(_UsuarioEntity) _then) = __$UsuarioEntityCopyWithImpl;
@override @useResult
$Res call({
 String? id, String nome, String sobrenome, DateTime adicionadoEm, String email
});




}
/// @nodoc
class __$UsuarioEntityCopyWithImpl<$Res>
    implements _$UsuarioEntityCopyWith<$Res> {
  __$UsuarioEntityCopyWithImpl(this._self, this._then);

  final _UsuarioEntity _self;
  final $Res Function(_UsuarioEntity) _then;

/// Create a copy of UsuarioEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? nome = null,Object? sobrenome = null,Object? adicionadoEm = null,Object? email = null,}) {
  return _then(_UsuarioEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,sobrenome: null == sobrenome ? _self.sobrenome : sobrenome // ignore: cast_nullable_to_non_nullable
as String,adicionadoEm: null == adicionadoEm ? _self.adicionadoEm : adicionadoEm // ignore: cast_nullable_to_non_nullable
as DateTime,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
