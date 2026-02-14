// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'configuracoes_remote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConfiguracoesRemoteModel {

 String? get id; bool? get darkMode; int get nivelBuffer;
/// Create a copy of ConfiguracoesRemoteModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfiguracoesRemoteModelCopyWith<ConfiguracoesRemoteModel> get copyWith => _$ConfiguracoesRemoteModelCopyWithImpl<ConfiguracoesRemoteModel>(this as ConfiguracoesRemoteModel, _$identity);

  /// Serializes this ConfiguracoesRemoteModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfiguracoesRemoteModel&&(identical(other.id, id) || other.id == id)&&(identical(other.darkMode, darkMode) || other.darkMode == darkMode)&&(identical(other.nivelBuffer, nivelBuffer) || other.nivelBuffer == nivelBuffer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,darkMode,nivelBuffer);

@override
String toString() {
  return 'ConfiguracoesRemoteModel(id: $id, darkMode: $darkMode, nivelBuffer: $nivelBuffer)';
}


}

/// @nodoc
abstract mixin class $ConfiguracoesRemoteModelCopyWith<$Res>  {
  factory $ConfiguracoesRemoteModelCopyWith(ConfiguracoesRemoteModel value, $Res Function(ConfiguracoesRemoteModel) _then) = _$ConfiguracoesRemoteModelCopyWithImpl;
@useResult
$Res call({
 String? id, bool? darkMode, int nivelBuffer
});




}
/// @nodoc
class _$ConfiguracoesRemoteModelCopyWithImpl<$Res>
    implements $ConfiguracoesRemoteModelCopyWith<$Res> {
  _$ConfiguracoesRemoteModelCopyWithImpl(this._self, this._then);

  final ConfiguracoesRemoteModel _self;
  final $Res Function(ConfiguracoesRemoteModel) _then;

/// Create a copy of ConfiguracoesRemoteModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? darkMode = freezed,Object? nivelBuffer = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,darkMode: freezed == darkMode ? _self.darkMode : darkMode // ignore: cast_nullable_to_non_nullable
as bool?,nivelBuffer: null == nivelBuffer ? _self.nivelBuffer : nivelBuffer // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ConfiguracoesRemoteModel].
extension ConfiguracoesRemoteModelPatterns on ConfiguracoesRemoteModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfiguracoesRemoteModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfiguracoesRemoteModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfiguracoesRemoteModel value)  $default,){
final _that = this;
switch (_that) {
case _ConfiguracoesRemoteModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfiguracoesRemoteModel value)?  $default,){
final _that = this;
switch (_that) {
case _ConfiguracoesRemoteModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  bool? darkMode,  int nivelBuffer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfiguracoesRemoteModel() when $default != null:
return $default(_that.id,_that.darkMode,_that.nivelBuffer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  bool? darkMode,  int nivelBuffer)  $default,) {final _that = this;
switch (_that) {
case _ConfiguracoesRemoteModel():
return $default(_that.id,_that.darkMode,_that.nivelBuffer);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  bool? darkMode,  int nivelBuffer)?  $default,) {final _that = this;
switch (_that) {
case _ConfiguracoesRemoteModel() when $default != null:
return $default(_that.id,_that.darkMode,_that.nivelBuffer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConfiguracoesRemoteModel extends ConfiguracoesRemoteModel {
  const _ConfiguracoesRemoteModel({this.id, this.darkMode, required this.nivelBuffer}): super._();
  factory _ConfiguracoesRemoteModel.fromJson(Map<String, dynamic> json) => _$ConfiguracoesRemoteModelFromJson(json);

@override final  String? id;
@override final  bool? darkMode;
@override final  int nivelBuffer;

/// Create a copy of ConfiguracoesRemoteModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfiguracoesRemoteModelCopyWith<_ConfiguracoesRemoteModel> get copyWith => __$ConfiguracoesRemoteModelCopyWithImpl<_ConfiguracoesRemoteModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfiguracoesRemoteModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfiguracoesRemoteModel&&(identical(other.id, id) || other.id == id)&&(identical(other.darkMode, darkMode) || other.darkMode == darkMode)&&(identical(other.nivelBuffer, nivelBuffer) || other.nivelBuffer == nivelBuffer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,darkMode,nivelBuffer);

@override
String toString() {
  return 'ConfiguracoesRemoteModel(id: $id, darkMode: $darkMode, nivelBuffer: $nivelBuffer)';
}


}

/// @nodoc
abstract mixin class _$ConfiguracoesRemoteModelCopyWith<$Res> implements $ConfiguracoesRemoteModelCopyWith<$Res> {
  factory _$ConfiguracoesRemoteModelCopyWith(_ConfiguracoesRemoteModel value, $Res Function(_ConfiguracoesRemoteModel) _then) = __$ConfiguracoesRemoteModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, bool? darkMode, int nivelBuffer
});




}
/// @nodoc
class __$ConfiguracoesRemoteModelCopyWithImpl<$Res>
    implements _$ConfiguracoesRemoteModelCopyWith<$Res> {
  __$ConfiguracoesRemoteModelCopyWithImpl(this._self, this._then);

  final _ConfiguracoesRemoteModel _self;
  final $Res Function(_ConfiguracoesRemoteModel) _then;

/// Create a copy of ConfiguracoesRemoteModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? darkMode = freezed,Object? nivelBuffer = null,}) {
  return _then(_ConfiguracoesRemoteModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,darkMode: freezed == darkMode ? _self.darkMode : darkMode // ignore: cast_nullable_to_non_nullable
as bool?,nivelBuffer: null == nivelBuffer ? _self.nivelBuffer : nivelBuffer // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
