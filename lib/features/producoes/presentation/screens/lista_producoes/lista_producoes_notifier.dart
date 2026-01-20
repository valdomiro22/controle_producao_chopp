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

    final useCase = ref.read(getAllProducoesUseCaseProvider);
    final result = await useCase(gradeId);

    result.fold(
      (failure) => state = AppState.erro(failure),
      (lista) => state = AppState.sucessoComLista(lista),
    );
  }

  Future<void> buscarProducao({required String gradeId, required String producaoId}) async {
    state = AppState.carregando();

    final useCase = ref.read(gerProducaoUseCaseProvider);
    final result = await useCase(producaoId: producaoId, gradeId: gradeId);

    result.fold(
        (failure) => state = AppState.erro(failure),
        (producao) {
          if (producao == null) return state = AppState.sucessoComDados(null);
          return state = AppState.sucessoComDados(producao);
        }
    );
  }

  Future<void> deletarProducao({required String gradeId, required String producaoId}) async {
    state = AppState.carregando();

    final useCase = ref.read(deleteProducaoUseCaseProvider);
    final result = await useCase(producaoId: producaoId, gradeId: gradeId);

    result.fold(
        (failure) => state = AppState.erro(failure),
        (_) {
          listarProducoes(gradeId);
          return state = AppState.sucesso();
        },
    );
  }

  Future<void> atualizarProducao({required String gradeId, required String producaoId, required ProducaoEntity prod,}) async {
    state = AppState.carregando();

    final useCase = ref.read(updateProducaoUseCaseProvider);
    final result = await useCase(
      gradeId: gradeId,
      producaoId: producaoId,
      producao: prod
    );

    result.fold(
        (failure) => state = AppState.erro(failure),
        (_) {
          listarProducoes(gradeId);
          return state = AppState.sucesso();
        },
    );
  }
}