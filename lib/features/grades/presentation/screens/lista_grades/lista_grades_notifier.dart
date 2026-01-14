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

    state = result.fold(
          (failure) => ListaGradesState.erro(failure),
          (lista) => ListaGradesState.sucessoConDados(lista),
    );
  }

  Future<void> deletarGrade(String id) async {
    state = const ListaGradesState.carregando();

    final useCase = ref.read(deleteGradeUseCaseProvider);
    final result = await useCase(id);

    state = result.fold(
          (failure) => ListaGradesState.erro(failure),
          (_) {
            ref.read(listaGradesNotifierProvider.notifier).listarGrades();
            return ListaGradesState.sucesso();
          },
    );
  }
}