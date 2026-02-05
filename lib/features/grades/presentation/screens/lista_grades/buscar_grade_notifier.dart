import 'package:gestao_producao_chopp/core/di/usecases/grade_use_cases_provider.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/grades/presentation/screens/lista_grades/buscar_grade_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buscar_grade_notifier.g.dart';

@riverpod
class BuscarGradeNotifier extends _$BuscarGradeNotifier {
  @override
  BuscarGradeState build() => BuscarGradeState.inicial();

  Future<void> buscar(String gradeId) async {
    state = BuscarGradeState.carregando();

    final useCase = ref.read(getGradeUseCaseProvider);
    final result = await useCase(gradeId);

    result.fold(
            (failure) => state = BuscarGradeState.erro(failure),
            (dados) {
      if (dados == null) {
        state = BuscarGradeState.erro(UnexpectedFailure('Erro inesperado ao buscar produção'));
      }
      return state = BuscarGradeState.sucessoComDados(dados!);
    });
  }
}
