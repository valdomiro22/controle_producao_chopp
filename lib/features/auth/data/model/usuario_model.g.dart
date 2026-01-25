// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsuarioModel _$UsuarioModelFromJson(Map<String, dynamic> json) =>
    _UsuarioModel(
      id: json['id'] as String?,
      nome: json['nome'] as String,
      sobrenome: json['sobrenome'] as String,
      adicionadoEm: DateTime.parse(json['adicionadoEm'] as String),
      email: json['email'] as String,
    );

Map<String, dynamic> _$UsuarioModelToJson(_UsuarioModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'sobrenome': instance.sobrenome,
      'adicionadoEm': instance.adicionadoEm.toIso8601String(),
      'email': instance.email,
    };
