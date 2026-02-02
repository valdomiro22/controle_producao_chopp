import '../../../grades/domain/enums/turno.dart';
import '../enums/tipo_codigo.dart';

class AnotacaoEntity {
  final String? id;
  final String gradeId;
  final String producaoId;
  final String codigo;
  final String usuarioId;
  final String nomeUsuario;
  final Turno turno;
  final DateTime data;
  final DateTime horario;
  final int horarioId;
  final DateTime? dataEdicao;
  final DateTime? horarioEdicao;
  final TipoCodigo tipoCodigo;
  final String? observacao;

  AnotacaoEntity({
    this.id,
    required this.gradeId,
    required this.producaoId,
    required this.codigo,
    required this.usuarioId,
    required this.nomeUsuario,
    required this.turno,
    required this.data,
    required this.horario,
    required this.horarioId,
    this.dataEdicao,
    this.horarioEdicao,
    required this.tipoCodigo,
    this.observacao,
  });

  AnotacaoEntity copyWith({
    String? id,
    String? codigo,
    String? gradeId,
    String? producaoId,
    String? usuarioId,
    String? nomeUsuario,
    Turno? turno,
    DateTime? data,
    DateTime? horario,
    int? horarioId,
    DateTime? dataEdicao,
    DateTime? horarioEdicao,
    TipoCodigo? tipoCodigo,
    String? observacao,
  }) {
    return AnotacaoEntity(
      id: id ?? this.id,
      gradeId: gradeId ?? this.gradeId,
      producaoId: producaoId ?? this.producaoId,
      codigo: codigo ?? this.codigo,
      usuarioId: usuarioId ?? this.usuarioId,
      nomeUsuario: nomeUsuario ?? this.nomeUsuario,
      turno: turno ?? this.turno,
      data: data ?? this.data,
      horario: horario ?? this.horario,
      horarioId: horarioId ?? this.horarioId,
      dataEdicao: dataEdicao ?? this.dataEdicao,
      horarioEdicao: horarioEdicao ?? this.horarioEdicao,
      tipoCodigo: tipoCodigo ?? this.tipoCodigo,
      observacao: observacao ?? this.observacao,
    );
  }

  String mostrar() {
    return '\nAnotacaoEntity('
        '\nid: $id, '
        '\ngradeId: $gradeId, '
        '\nproducaoId: $producaoId, '
        '\ncodigo: $codigo, '
        '\nusuarioId: $usuarioId, '
        '\nnomeUsuario: $nomeUsuario, '
        '\nturno: $turno, '
        '\ndata: $data, '
        '\nhorario: $horario, '
        '\nhorarioId: $horarioId, '
        '\ndataEdicao: $dataEdicao, '
        '\nhorarioEdicao: $horarioEdicao, '
        '\ntipoCodigo: $tipoCodigo, '
        '\nobservacao: $observacao'
        ')\n';
  }
}
