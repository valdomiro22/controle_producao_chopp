import 'package:gestao_producao_chopp/features/tipobarril/domain/entities/tipo_barril_entity.dart';

import '../enums/status_producao.dart';

class ProducaoEntity {
  final String? id;
  final String gradeId;
  final StatusProducao status;
  final String tipoBarrilId;
  final String produtoId;
  final int quantidadeProgramada;
  final int quantidadeProduzida;
  final DateTime? dataCriacao;
  final DateTime? dataFimDeProducao;

  ProducaoEntity({
    this.id,
    required this.gradeId,
    required this.status,
    required this.tipoBarrilId,
    required this.produtoId,
    required this.quantidadeProgramada,
    this.quantidadeProduzida = 0,
    required this.dataCriacao,
    this.dataFimDeProducao,
  });

  int get quantidadePendente {
    return quantidadeProgramada - quantidadeProduzida > 0
        ? quantidadeProgramada - quantidadeProduzida
        : 0;
  }

  // double get volumeNecessarioHl {
  //   return quantidadePendente * tipoBarrilId.volume / 100;
  // }

  ProducaoEntity copyWith({
    String? id,
    String? gradeId,
    StatusProducao? status,
    String? tipoBarrilId,
    String? produtoId,
    int? quantidadeProgramada,
    int? quantidadeProduzida,
    DateTime? dataCriacao,
    DateTime? dataFimDeProducao,
  }) {
    return ProducaoEntity(
      id: id ?? this.id,
      gradeId: gradeId ?? this.gradeId,
      status: status ?? this.status,
      tipoBarrilId: tipoBarrilId ?? this.tipoBarrilId,
      produtoId: produtoId ?? this.produtoId,
      quantidadeProgramada: quantidadeProgramada ?? this.quantidadeProgramada,
      quantidadeProduzida: quantidadeProduzida ?? this.quantidadeProduzida,
      dataCriacao: dataCriacao ?? this.dataCriacao,
      dataFimDeProducao: dataFimDeProducao ?? this.dataFimDeProducao,
    );
  }

  @override
  String toString() {
    return 'ProducaoEntity('
        'id: $id, '
        'gradeId: $gradeId, '
        'status: $status, '
        'tipoBarrilId: $tipoBarrilId, '
        'produtoId: $produtoId, '
        'quantidadeProgramada: $quantidadeProgramada, '
        'quantidadeProduzida: $quantidadeProduzida, '
        // 'volumeNecessarioHl: $volumeNecessarioHl, '
        'volumeNecessarioHl: ${-0.01}, '
        'iniciadaProducao: $dataCriacao, '
        'dataFimDeProducao: $dataFimDeProducao'
        ')';
  }
}
