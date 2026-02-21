// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adicionar_tipo_barril_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdicionarTipoBarrilState {

 String get nome; int get volume; bool get isDescartavel; String? get erro; String? get erroNome; String? get erroVolume; bool get isLoading; bool get isSucess; bool get camposValidos;
/// Create a copy of AdicionarTipoBarrilState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdicionarTipoBarrilStateCopyWith<AdicionarTipoBarrilState> get copyWith => _$AdicionarTipoBarrilStateCopyWithImpl<AdicionarTipoBarrilState>(this as AdicionarTipoBarrilState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdicionarTipoBarrilState&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.isDescartavel, isDescartavel) || other.isDescartavel == isDescartavel)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroNome, erroNome) || other.erroNome == erroNome)&&(identical(other.erroVolume, erroVolume) || other.erroVolume == erroVolume)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,nome,volume,isDescartavel,erro,erroNome,erroVolume,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'AdicionarTipoBarrilState(nome: $nome, volume: $volume, isDescartavel: $isDescartavel, erro: $erro, erroNome: $erroNome, erroVolume: $erroVolume, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $AdicionarTipoBarrilStateCopyWith<$Res>  {
  factory $AdicionarTipoBarrilStateCopyWith(AdicionarTipoBarrilState value, $Res Function(AdicionarTipoBarrilState) _then) = _$AdicionarTipoBarrilStateCopyWithImpl;
@useResult
$Res call({
 String nome, int volume, bool isDescartavel, String? erro, String? erroNome, String? erroVolume, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class _$AdicionarTipoBarrilStateCopyWithImpl<$Res>
    implements $AdicionarTipoBarrilStateCopyWith<$Res> {
  _$AdicionarTipoBarrilStateCopyWithImpl(this._self, this._then);

  final AdicionarTipoBarrilState _self;
  final $Res Function(AdicionarTipoBarrilState) _then;

/// Create a copy of AdicionarTipoBarrilState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nome = null,Object? volume = null,Object? isDescartavel = null,Object? erro = freezed,Object? erroNome = freezed,Object? erroVolume = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int,isDescartavel: null == isDescartavel ? _self.isDescartavel : isDescartavel // ignore: cast_nullable_to_non_nullable
as bool,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroNome: freezed == erroNome ? _self.erroNome : erroNome // ignore: cast_nullable_to_non_nullable
as String?,erroVolume: freezed == erroVolume ? _self.erroVolume : erroVolume // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AdicionarTipoBarrilState].
extension AdicionarTipoBarrilStatePatterns on AdicionarTipoBarrilState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdicionarTipoBarrilState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdicionarTipoBarrilState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdicionarTipoBarrilState value)  $default,){
final _that = this;
switch (_that) {
case _AdicionarTipoBarrilState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdicionarTipoBarrilState value)?  $default,){
final _that = this;
switch (_that) {
case _AdicionarTipoBarrilState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nome,  int volume,  bool isDescartavel,  String? erro,  String? erroNome,  String? erroVolume,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdicionarTipoBarrilState() when $default != null:
return $default(_that.nome,_that.volume,_that.isDescartavel,_that.erro,_that.erroNome,_that.erroVolume,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nome,  int volume,  bool isDescartavel,  String? erro,  String? erroNome,  String? erroVolume,  bool isLoading,  bool isSucess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _AdicionarTipoBarrilState():
return $default(_that.nome,_that.volume,_that.isDescartavel,_that.erro,_that.erroNome,_that.erroVolume,_that.isLoading,_that.isSucess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nome,  int volume,  bool isDescartavel,  String? erro,  String? erroNome,  String? erroVolume,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _AdicionarTipoBarrilState() when $default != null:
return $default(_that.nome,_that.volume,_that.isDescartavel,_that.erro,_that.erroNome,_that.erroVolume,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _AdicionarTipoBarrilState implements AdicionarTipoBarrilState {
  const _AdicionarTipoBarrilState({this.nome = '', this.volume = -1, this.isDescartavel = false, this.erro, this.erroNome, this.erroVolume, this.isLoading = false, this.isSucess = false, this.camposValidos = false});
  

@override@JsonKey() final  String nome;
@override@JsonKey() final  int volume;
@override@JsonKey() final  bool isDescartavel;
@override final  String? erro;
@override final  String? erroNome;
@override final  String? erroVolume;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSucess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of AdicionarTipoBarrilState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdicionarTipoBarrilStateCopyWith<_AdicionarTipoBarrilState> get copyWith => __$AdicionarTipoBarrilStateCopyWithImpl<_AdicionarTipoBarrilState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdicionarTipoBarrilState&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.isDescartavel, isDescartavel) || other.isDescartavel == isDescartavel)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroNome, erroNome) || other.erroNome == erroNome)&&(identical(other.erroVolume, erroVolume) || other.erroVolume == erroVolume)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,nome,volume,isDescartavel,erro,erroNome,erroVolume,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'AdicionarTipoBarrilState(nome: $nome, volume: $volume, isDescartavel: $isDescartavel, erro: $erro, erroNome: $erroNome, erroVolume: $erroVolume, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$AdicionarTipoBarrilStateCopyWith<$Res> implements $AdicionarTipoBarrilStateCopyWith<$Res> {
  factory _$AdicionarTipoBarrilStateCopyWith(_AdicionarTipoBarrilState value, $Res Function(_AdicionarTipoBarrilState) _then) = __$AdicionarTipoBarrilStateCopyWithImpl;
@override @useResult
$Res call({
 String nome, int volume, bool isDescartavel, String? erro, String? erroNome, String? erroVolume, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class __$AdicionarTipoBarrilStateCopyWithImpl<$Res>
    implements _$AdicionarTipoBarrilStateCopyWith<$Res> {
  __$AdicionarTipoBarrilStateCopyWithImpl(this._self, this._then);

  final _AdicionarTipoBarrilState _self;
  final $Res Function(_AdicionarTipoBarrilState) _then;

/// Create a copy of AdicionarTipoBarrilState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nome = null,Object? volume = null,Object? isDescartavel = null,Object? erro = freezed,Object? erroNome = freezed,Object? erroVolume = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_AdicionarTipoBarrilState(
nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int,isDescartavel: null == isDescartavel ? _self.isDescartavel : isDescartavel // ignore: cast_nullable_to_non_nullable
as bool,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroNome: freezed == erroNome ? _self.erroNome : erroNome // ignore: cast_nullable_to_non_nullable
as String?,erroVolume: freezed == erroVolume ? _self.erroVolume : erroVolume // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
