// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tipo_produto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TipoProdutoModel _$TipoProdutoModelFromJson(Map<String, dynamic> json) =>
    _TipoProdutoModel(
      id: json['id'] as String?,
      nome: json['nome'] as String,
      prazoValidade: (json['prazoValidade'] as num).toInt(),
    );

Map<String, dynamic> _$TipoProdutoModelToJson(_TipoProdutoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'prazoValidade': instance.prazoValidade,
    };
