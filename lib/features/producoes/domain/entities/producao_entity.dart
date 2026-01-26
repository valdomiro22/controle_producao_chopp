import '../../../grades/domain/enums/barril.dart';
import '../../../grades/domain/enums/produto.dart';
import '../enums/status_producao.dart';

class ProducaoEntity {
  final String? id;
  final String gradeId;
  final String horarioReferente;
  final StatusProducao status;
  final Barril tipoBarril;
  final Produto produto;
  final int quantidadeProgramada;
  final int? quantidadeProduzida;
  final int? quantidadePendente;
  final double? volumeNecessarioHl;
  final DateTime? dataCriacao;
  final DateTime? finalizadaProducao;

  ProducaoEntity({
    this.id,
    required this.gradeId,
    required this.horarioReferente,
    required this.status,
    required this.tipoBarril,
    required this.produto,
    required this.quantidadeProgramada,
    this.quantidadeProduzida = 0,
    this.quantidadePendente = 0,
    required this.volumeNecessarioHl,
    required this.dataCriacao,
    this.finalizadaProducao,
  });

  ProducaoEntity copyWith({
    String? id,
    String? gradeId,
    String? horarioReferente,
    StatusProducao? status,
    Barril? tipoBarril,
    Produto? produto,
    int? quantidadeProgramada,
    int? quantidadeProduzida,
    int? quantidadePendente,
    double? volumeNecessarioHl,
    DateTime? dataCriacao,
    DateTime? finalizadaProducao,
  }) {
    return ProducaoEntity(
      id: id ?? this.id,
      gradeId: gradeId ?? this.gradeId,
      horarioReferente: horarioReferente ?? this.horarioReferente,
      status: status ?? this.status,
      tipoBarril: tipoBarril ?? this.tipoBarril,
      produto: produto ?? this.produto,
      quantidadeProgramada: quantidadeProgramada ?? this.quantidadeProgramada,
      quantidadeProduzida: quantidadeProduzida ?? this.quantidadeProduzida,
      quantidadePendente: quantidadePendente ?? this.quantidadePendente,
      volumeNecessarioHl: volumeNecessarioHl ?? this.volumeNecessarioHl,
      dataCriacao: dataCriacao ?? this.dataCriacao,
      finalizadaProducao: finalizadaProducao ?? this.finalizadaProducao,
    );
  }

  @override
  String toString() {
    return 'ProducaoEntity('
      'id: $id, '
      'gradeId: $gradeId, '
      'horarioReferente: $horarioReferente, '
      'status: $status, '
      'tipoBarril: $tipoBarril, '
      'produto: $produto, '
      'quantidadeProgramada: $quantidadeProgramada, '
      'quantidadeProduzida: $quantidadeProduzida, '
      'quantidadePendente: $quantidadePendente, '
      'volumeNecessarioHl: $volumeNecessarioHl, '
      'iniciadaProducao: $dataCriacao, '
      'finalizadaProducao: $finalizadaProducao'
      ')';
  }
}
