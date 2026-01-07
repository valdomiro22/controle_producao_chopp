import 'enums/produto.dart';
import 'enums/status_producao.dart';
import 'enums/barril.dart';

class ProducaoEntity {
  final int? id;
  final int? gradeId;
  final StatusProducao status;
  final Barril tipoBarril;
  final Produto produto;
  final int quantidadeProgramada;
  final int quantidadeProduzida;
  final int quantidadePendente;
  final double volumeNecessarioHl;

  ProducaoEntity({
    this.id,
    this.gradeId,
    required this.status,
    required this.tipoBarril,
    required this.produto,
    required this.quantidadeProgramada,
    this.quantidadeProduzida = 0,
    this.quantidadePendente = 0,
    required this.volumeNecessarioHl,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'gradeId': gradeId,
      'status': status.id,
      'tipoBarril': tipoBarril.id,
      'produto': produto.id,
      'quantidade': quantidadeProgramada,
      'qtProduzida': quantidadeProduzida,
      'qtPendente': quantidadePendente,
      'vlNecessarioHl': volumeNecessarioHl,
    };
  }

  factory ProducaoEntity.fromJson(Map<String, dynamic> json) {
    return ProducaoEntity(
      id: json['id'] as int?,
      gradeId: json['gradeId'] as int?,
      status: StatusProducao.fronId(json['status'] as int),
      tipoBarril: Barril.fronId(json['tipoBarril'] as int),
      produto: Produto.fronId(json['produto'] as int),
      quantidadeProgramada: json['quantidade'] as int,
      quantidadeProduzida: json['qtProduzida'] as int,
      quantidadePendente: json['qtPendente'] as int,
      volumeNecessarioHl: json['vlNecessarioHl'] as double,
    );
  }

  ProducaoEntity copyWith({
    int? id,
    int? gradeId,
    StatusProducao? status,
    Barril? tipoBarril,
    Produto? produto,
    int? quantidade,
    int? qtProduzida,
    int? qtPendente,
    double? vlNecessarioHl,
  }) {
    return ProducaoEntity(
      id: id ?? this.id,
      gradeId: gradeId ?? this.gradeId,
      status: status ?? this.status,
      tipoBarril: tipoBarril ?? this.tipoBarril,
      produto: produto ?? this.produto,
      quantidadeProgramada: quantidade ?? this.quantidadeProgramada,
      quantidadeProduzida: qtProduzida ?? this.quantidadeProduzida,
      quantidadePendente: qtPendente ?? this.quantidadePendente,
      volumeNecessarioHl: vlNecessarioHl ?? this.volumeNecessarioHl,
    );
  }
}
