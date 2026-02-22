import 'package:gestao_producao_chopp/core/di/usecases/grade_use_cases_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'lista_grades_state.dart';

part 'lista_grades_notifier.g.dart';

@riverpod
class ListaGradesNotifier extends _$ListaGradesNotifier {
  @override
  ListaGradesState build() => const ListaGradesState.inicial();

  Future<void> listarGrades() async {
    state = const ListaGradesState.carregando();

    final useCase = ref.read(getAllGradesUseCaseProvider);
    final result = await useCase();

    result.fold(
          (failure) => state = ListaGradesState.erro(failure),
          (lista) {
            return state = ListaGradesState.sucessoComDados(lista);
          },
    );
  }

  Future<void> deletarGrade(String id) async {
    state = const ListaGradesState.carregando();

    final useCase = ref.read(deleteGradeUseCaseProvider);
    final result = await useCase(id);

    result.fold(
          (failure) => state = ListaGradesState.erro(failure),
          (_) {
        listarGrades();
      },
    );
  }
}