import 'package:gestao_producao_chopp/core/di/usecases/quantidade_horaria_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/entities/quantidade_horaria_entity.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/presentation/providers/form_qt_horaria.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'inserir_quantidade_horaria_notifier.g.dart';

@riverpod
class InserirQuantidadeHorariaNotifier extends _$InserirQuantidadeHorariaNotifier {
  @override
  FormQtHoraria build(String producaoId) {
    return FormQtHoraria(producaoId: producaoId, horarioReferente: '');
  }

  Future<void> inserirQuantidade({required String horario, required int quantidade}) async {
    state = state.copyWith(isLoading: true);

    final qtHoraria = QuantidadeHorariaEntity(
        turno: state.turno,
        producaoId: state.producaoId,
        turnoReferente: state.turnoReferente,
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

    result.fold(
        (failure) {
          state = state.copyWith(
            isLoading: false,
            mensagemErro: failure.message
          );
        },
        (_) {
          state = state.copyWith(
            isLoading: false,
            isSuccess: true
          );
        }
    );
  }
}