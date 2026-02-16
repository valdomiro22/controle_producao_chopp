import '../../../grades/domain/enums/barril.dart';
import '../../../grades/domain/enums/produto.dart';
import '../enums/status_producao.dart';

class ProducaoEntity {
  final String? id;
  final String gradeId;
  final StatusProducao status;
  final Barril tipoBarril;
  final Produto produto;
  final int quantidadeProgramada;
  final int quantidadeProduzida;
  final DateTime? dataCriacao;
  final DateTime? dataFimDeProducao;

  ProducaoEntity({
    this.id,
    required this.gradeId,
    required this.status,
    required this.tipoBarril,
    required this.produto,
    required this.quantidadeProgramada,
    this.quantidadeProduzida = 0,
    required this.dataCriacao,
    this.dataFimDeProducao,
  });

  int get quantidadePendente {
    return quantidadeProgramada - quantidadeProduzida > 0 ? quantidadeProgramada - quantidadeProduzida : 0;
  }

  double get volumeNecessarioHl {
    return quantidadePendente * tipoBarril.volume / 100;
  }

  ProducaoEntity copyWith({
    String? id,
    String? gradeId,
    StatusProducao? status,
    Barril? tipoBarril,
    Produto? produto,
    int? quantidadeProgramada,
    int? quantidadeProduzida,
    DateTime? dataCriacao,
    DateTime? dataFimDeProducao,
  }) {
    return ProducaoEntity(
      id: id ?? this.id,
      gradeId: gradeId ?? this.gradeId,
      status: status ?? this.status,
      tipoBarril: tipoBarril ?? this.tipoBarril,
      produto: produto ?? this.produto,
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
        'tipoBarril: $tipoBarril, '
        'produto: $produto, '
        'quantidadeProgramada: $quantidadeProgramada, '
        'quantidadeProduzida: $quantidadeProduzida, '
        'volumeNecessarioHl: $volumeNecessarioHl, '
        'iniciadaProducao: $dataCriacao, '
        'dataFimDeProducao: $dataFimDeProducao'
        ')';
  }
}
