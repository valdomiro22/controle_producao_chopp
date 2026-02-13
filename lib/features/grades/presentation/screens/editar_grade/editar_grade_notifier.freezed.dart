// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editar_grade_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FormEditarGradeState {

 int? get numeroGrade; DateTime? get data; String? get erro; String? get erroNumero; String? get erroData; bool get isLoading; bool get isSucess; bool get camposValidos;
/// Create a copy of FormEditarGradeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormEditarGradeStateCopyWith<FormEditarGradeState> get copyWith => _$FormEditarGradeStateCopyWithImpl<FormEditarGradeState>(this as FormEditarGradeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormEditarGradeState&&(identical(other.numeroGrade, numeroGrade) || other.numeroGrade == numeroGrade)&&(identical(other.data, data) || other.data == data)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroNumero, erroNumero) || other.erroNumero == erroNumero)&&(identical(other.erroData, erroData) || other.erroData == erroData)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,numeroGrade,data,erro,erroNumero,erroData,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'FormEditarGradeState(numeroGrade: $numeroGrade, data: $data, erro: $erro, erroNumero: $erroNumero, erroData: $erroData, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $FormEditarGradeStateCopyWith<$Res>  {
  factory $FormEditarGradeStateCopyWith(FormEditarGradeState value, $Res Function(FormEditarGradeState) _then) = _$FormEditarGradeStateCopyWithImpl;
@useResult
$Res call({
 int? numeroGrade, DateTime? data, String? erro, String? erroNumero, String? erroData, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class _$FormEditarGradeStateCopyWithImpl<$Res>
    implements $FormEditarGradeStateCopyWith<$Res> {
  _$FormEditarGradeStateCopyWithImpl(this._self, this._then);

  final FormEditarGradeState _self;
  final $Res Function(FormEditarGradeState) _then;

/// Create a copy of FormEditarGradeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? numeroGrade = freezed,Object? data = freezed,Object? erro = freezed,Object? erroNumero = freezed,Object? erroData = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
numeroGrade: freezed == numeroGrade ? _self.numeroGrade : numeroGrade // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DateTime?,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroNumero: freezed == erroNumero ? _self.erroNumero : erroNumero // ignore: cast_nullable_to_non_nullable
as String?,erroData: freezed == erroData ? _self.erroData : erroData // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FormEditarGradeState].
extension FormEditarGradeStatePatterns on FormEditarGradeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FormEditarGradeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FormEditarGradeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FormEditarGradeState value)  $default,){
final _that = this;
switch (_that) {
case _FormEditarGradeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FormEditarGradeState value)?  $default,){
final _that = this;
switch (_that) {
case _FormEditarGradeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? numeroGrade,  DateTime? data,  String? erro,  String? erroNumero,  String? erroData,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FormEditarGradeState() when $default != null:
return $default(_that.numeroGrade,_that.data,_that.erro,_that.erroNumero,_that.erroData,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? numeroGrade,  DateTime? data,  String? erro,  String? erroNumero,  String? erroData,  bool isLoading,  bool isSucess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _FormEditarGradeState():
return $default(_that.numeroGrade,_that.data,_that.erro,_that.erroNumero,_that.erroData,_that.isLoading,_that.isSucess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? numeroGrade,  DateTime? data,  String? erro,  String? erroNumero,  String? erroData,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _FormEditarGradeState() when $default != null:
return $default(_that.numeroGrade,_that.data,_that.erro,_that.erroNumero,_that.erroData,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _FormEditarGradeState implements FormEditarGradeState {
  const _FormEditarGradeState({this.numeroGrade, this.data, this.erro, this.erroNumero, this.erroData, this.isLoading = false, this.isSucess = false, this.camposValidos = false});
  

@override final  int? numeroGrade;
@override final  DateTime? data;
@override final  String? erro;
@override final  String? erroNumero;
@override final  String? erroData;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSucess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of FormEditarGradeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FormEditarGradeStateCopyWith<_FormEditarGradeState> get copyWith => __$FormEditarGradeStateCopyWithImpl<_FormEditarGradeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormEditarGradeState&&(identical(other.numeroGrade, numeroGrade) || other.numeroGrade == numeroGrade)&&(identical(other.data, data) || other.data == data)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroNumero, erroNumero) || other.erroNumero == erroNumero)&&(identical(other.erroData, erroData) || other.erroData == erroData)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,numeroGrade,data,erro,erroNumero,erroData,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'FormEditarGradeState(numeroGrade: $numeroGrade, data: $data, erro: $erro, erroNumero: $erroNumero, erroData: $erroData, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$FormEditarGradeStateCopyWith<$Res> implements $FormEditarGradeStateCopyWith<$Res> {
  factory _$FormEditarGradeStateCopyWith(_FormEditarGradeState value, $Res Function(_FormEditarGradeState) _then) = __$FormEditarGradeStateCopyWithImpl;
@override @useResult
$Res call({
 int? numeroGrade, DateTime? data, String? erro, String? erroNumero, String? erroData, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class __$FormEditarGradeStateCopyWithImpl<$Res>
    implements _$FormEditarGradeStateCopyWith<$Res> {
  __$FormEditarGradeStateCopyWithImpl(this._self, this._then);

  final _FormEditarGradeState _self;
  final $Res Function(_FormEditarGradeState) _then;

/// Create a copy of FormEditarGradeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? numeroGrade = freezed,Object? data = freezed,Object? erro = freezed,Object? erroNumero = freezed,Object? erroData = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_FormEditarGradeState(
numeroGrade: freezed == numeroGrade ? _self.numeroGrade : numeroGrade // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DateTime?,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroNumero: freezed == erroNumero ? _self.erroNumero : erroNumero // ignore: cast_nullable_to_non_nullable
as String?,erroData: freezed == erroData ? _self.erroData : erroData // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
