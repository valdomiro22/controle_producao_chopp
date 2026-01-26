// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_adicionar_producao_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FormAdicionarProducaoState _$FormAdicionarProducaoStateFromJson(
  Map<String, dynamic> json,
) => _FormAdicionarProducaoState(
  produto: $enumDecodeNullable(_$ProdutoEnumMap, json['produto']),
  barril: $enumDecodeNullable(_$BarrilEnumMap, json['barril']),
  quantidade: json['quantidade'] as String?,
  horarioReferente: json['horarioReferente'] as String? ?? '',
  data: json['data'] == null ? null : DateTime.parse(json['data'] as String),
  erro: json['erro'] as String?,
  erroProduto: json['erroProduto'] as String?,
  erroBarril: json['erroBarril'] as String?,
  erroQuantidade: json['erroQuantidade'] as String?,
  erroGeral: json['erroGeral'] as String?,
  erroData: json['erroData'] as String?,
  isLoading: json['isLoading'] as bool? ?? false,
  isSucess: json['isSucess'] as bool? ?? false,
  camposValidos: json['camposValidos'] as bool? ?? false,
);

Map<String, dynamic> _$FormAdicionarProducaoStateToJson(
  _FormAdicionarProducaoState instance,
) => <String, dynamic>{
  'produto': _$ProdutoEnumMap[instance.produto],
  'barril': _$BarrilEnumMap[instance.barril],
  'quantidade': instance.quantidade,
  'horarioReferente': instance.horarioReferente,
  'data': instance.data?.toIso8601String(),
  'erro': instance.erro,
  'erroProduto': instance.erroProduto,
  'erroBarril': instance.erroBarril,
  'erroQuantidade': instance.erroQuantidade,
  'erroGeral': instance.erroGeral,
  'erroData': instance.erroData,
  'isLoading': instance.isLoading,
  'isSucess': instance.isSucess,
  'camposValidos': instance.camposValidos,
};

const _$ProdutoEnumMap = {
  Produto.itaipava: 'itaipava',
  Produto.petra: 'petra',
  Produto.itaipavaE: 'itaipavaE',
};

const _$BarrilEnumMap = {
  Barril.barril50L: 'barril50L',
  Barril.barril30L: 'barril30L',
  Barril.barril15L: 'barril15L',
};
