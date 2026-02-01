import 'package:gestao_producao_chopp/core/di/usecases/anotacao_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/screens/inseriranotacoes/buscar_anotacoes_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buscar_anotacoes_notifier.g.dart';

@riverpod
class BuscarAnotacoesNotifier extends _$BuscarAnotacoesNotifier {
  @override
  BuscarAnotacoesState build() => BuscarAnotacoesState.inicial();

  Future<void> buscar({required String gradeId, required String producaoId}) async {
    state = BuscarAnotacoesState.carregando();

    final useCase = ref.read(getAllAnotacoesUseCaseProvider);
    final result = await useCase(gradeId: gradeId, producaoId: producaoId);

    result.fold(
        (failure) => state = BuscarAnotacoesState.erro(failure),
        (lista) => state = BuscarAnotacoesState.sucessoComDados(lista),
    );
  }
}
