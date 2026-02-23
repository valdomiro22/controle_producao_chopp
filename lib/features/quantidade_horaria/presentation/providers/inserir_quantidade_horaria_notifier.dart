import 'dart:developer' as dev;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestao_producao_chopp/core/di/usecases/quantidade_horaria_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/entities/quantidade_horaria_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../grades/domain/enums/turno.dart';

part 'inserir_quantidade_horaria_notifier.freezed.dart';

part 'inserir_quantidade_horaria_notifier.g.dart';

@riverpod
class InserirQuantidadeHorariaNotifier extends _$InserirQuantidadeHorariaNotifier {
  @override
  FormQtHorariaState build(String producaoId) {
    return FormQtHorariaState.inicial(producaoId: producaoId);
  }
  void setTurno(Turno v) => state = state.copyWith(turno: v);

  Future<void> inserirQuantidade({required String horario, required int quantidade}) async {
    state = state.copyWith(isLoading: true);

    dev.log('notifier: turno recebido: ${state.turno.label}');

    final qtHoraria = QuantidadeHorariaEntity(
      turno: state.turno,
      producaoId: state.producaoId,
      quantidade: quantidade,
      quantidadeAcumulada: state.quantidadeAcumulada,
      horario: DateTime.now(),
      data: DateTime.now(),
    );

    final useCase = ref.read(insertQtHorariaUseCaseProvider);

    final result = await useCase(
      qtHoraria: qtHoraria,
      producaoId: state.producaoId,
      horario: horario,
    );

    if (!ref.mounted) return;

    result.fold(
      (failure) {
        state = state.copyWith(erro: failure.message);
      },
      (_) {
        state = state.copyWith(isLoading: false, isSucess: true);
      },
    );
  }
}

@freezed
sealed class FormQtHorariaState with _$FormQtHorariaState {
  const factory FormQtHorariaState({
    String? id,
    @Default(Turno.turnoA) Turno turno,
    required String producaoId,
    @Default('') String horarioReferente,
    @Default(-1) int quantidade,
    @Default(-1) int quantidadeAcumulada,
    DateTime? horario,
    DateTime? data,
    String? erro,
    String? erroHorarioReferente,
    String? erroQuantidade,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool camposValidos,
  }) = _FormQtHorariaState;

  factory FormQtHorariaState.inicial({required String producaoId}) =>
      FormQtHorariaState(producaoId: producaoId);
}
