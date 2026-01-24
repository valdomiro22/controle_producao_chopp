import '../../../grades/domain/enums/turno.dart';

class FormQtHoraria {
  final String? id;
  final Turno turno;
  final String producaoId;
  final int turnoReferente;
  final int quantidade;
  final int quantidadeAcumulada;
  final DateTime? horario;
  final DateTime? data;
  final bool isLoading;
  final bool isSuccess;
  final String? mensagemErro;

  FormQtHoraria({
    this.id,
    this.turno = Turno.turnoA,
    required this.producaoId,
    this.turnoReferente = 1,
    this.quantidade = -1,
    this.quantidadeAcumulada = -1,
    this.horario,
    this.data,
    this.isSuccess = false,
    this.mensagemErro,
    this.isLoading = false,
  });

  FormQtHoraria copyWith({
    String? id,
    Turno? turno,
    String? producaoId,
    int? turnoReferente,
    int? quantidade,
    int? quantidadeAcumulada,
    DateTime? horario,
    DateTime? data,
    bool? isLoading,
    bool? isSuccess,
    String? mensagemErro,
  }) {
    return FormQtHoraria(
      id: id ?? this.id,
      turno: turno ?? this.turno,
      producaoId: producaoId ?? this.producaoId,
      turnoReferente: turnoReferente ?? this.turnoReferente,
      quantidade: quantidade ?? this.quantidade,
      quantidadeAcumulada: quantidadeAcumulada ?? this.quantidadeAcumulada,
      horario: horario ?? this.horario,
      data: data ?? this.data,
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
      mensagemErro: mensagemErro ?? this.mensagemErro,
    );
  }
}