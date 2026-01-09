import 'package:gestao_producao_chopp/core/di/usecases/grade_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/lista_grades/lista_grades_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
}