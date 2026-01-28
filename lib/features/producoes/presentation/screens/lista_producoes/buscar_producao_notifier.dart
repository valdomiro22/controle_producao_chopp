import 'package:gestao_producao_chopp/core/di/usecases/producao_use_cases_provider.dart';

// import 'package:gestao_producao_chopp/core/error/failure.dart'; // Importe se necessário
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/lista_producoes/buscar_producao_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../domain/entities/producao_entity.dart';

part 'buscar_producao_notifier.g.dart';

// 1. Renomeie a classe para 'BuscarProducao'.
// O Riverpod Generator criará automaticamente o 'buscarProducaoProvider'.
@riverpod
class BuscarProducao extends _$BuscarProducao {
  @override
  BuscarProducaoState build() => BuscarProducaoState.inicial();

  Future<void> busca({required String gradeId, required String producaoId}) async {
    state = BuscarProducaoState.carregando();

    final useCase = ref.read(gerProducaoUseCaseProvider);
    final result = await useCase(gradeId: gradeId, producaoId: producaoId);

    // 2. CORREÇÃO: Você deve atribuir o resultado ao 'state ='
    result.fold((failure) => state = BuscarProducaoState.erro(failure), (producao) {
      if (producao == null) {
        // Ajuste conforme seu Failure
        state = BuscarProducaoState.erro(UnexpectedFailure('Produção não encontrada'));
        return;
      }
      state = BuscarProducaoState.sucessoComDados(producao);
    });
  }

  // Agora este método estará acessível via .notifier
  void atualizarEstadoLocal(ProducaoEntity producaoAtualizada) {
    state = BuscarProducaoState.sucessoComDados(producaoAtualizada);
  }
}
