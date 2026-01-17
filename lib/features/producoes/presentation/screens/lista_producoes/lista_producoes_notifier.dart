import 'package:gestao_producao_chopp/core/common/states/app_state.dart';
import 'package:gestao_producao_chopp/core/di/usecases/producao_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lista_producoes_notifier.g.dart';

@riverpod
class ListaProducoesNotifier extends _$ListaProducoesNotifier {
  @override
  AppState<ProducaoEntity> build() => AppState.inicial();

  Future<void> listarProducoes(String gradeId) async {
    state = AppState.carregando();

    print('notifier chamado');

    final useCase = ref.read(getAllProducoesUseCaseProvider);
    final result = await useCase(gradeId);

    result.fold(
      (failure) => state = AppState.erro(failure),
      (lista) => state = AppState.sucessoComLista(lista),
    );
  }
}