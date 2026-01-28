import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gestao_producao_chopp/core/di/usecases/producao_use_cases_provider.dart';
import '../../../domain/entities/producao_entity.dart';

part 'buscar_producao_notifier.g.dart';

@riverpod
class BuscarProducao extends _$BuscarProducao {

  // O tipo do state é automaticamente AsyncValue<ProducaoEntity?>
  @override
  Future<ProducaoEntity?> build() async {
    // Retorna null inicialmente ou pode já buscar algo se quiser
    return null;
  }

  Future<void> buscar({required String gradeId, required String producaoId}) async {
    // 1. Coloca em Loading
    state = const AsyncValue.loading();

    final useCase = ref.read(gerProducaoUseCaseProvider);
    final result = await useCase(gradeId: gradeId, producaoId: producaoId);

    // 2. Define o resultado (Sucesso ou Erro)
    result.fold(
          (failure) {
        // Define o estado de erro
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
          (producao) {
        // Define o estado de SUCESSO com dados (AsyncData)
        state = AsyncValue.data(producao);
      },
    );
  }

  // --- ATUALIZAÇÃO LOCAL (SEM REFRESH) ---
  void atualizarEstadoLocal(ProducaoEntity producaoAtualizada) {
    // Aqui está a correção: Envolvemos o objeto em AsyncValue.data
    state = AsyncValue.data(producaoAtualizada);
  }
}