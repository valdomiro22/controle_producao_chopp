// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuracoes_remote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConfiguracoesRemoteModel _$ConfiguracoesRemoteModelFromJson(
  Map<String, dynamic> json,
) => _ConfiguracoesRemoteModel(
  id: json['id'] as String?,
  darkMode: json['darkMode'] as bool?,
  nivelBuffer: (json['nivelBuffer'] as num).toInt(),
);

Map<String, dynamic> _$ConfiguracoesRemoteModelToJson(
  _ConfiguracoesRemoteModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'darkMode': instance.darkMode,
  'nivelBuffer': instance.nivelBuffer,
};
