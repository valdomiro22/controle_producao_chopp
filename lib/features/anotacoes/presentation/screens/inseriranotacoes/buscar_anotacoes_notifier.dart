import 'package:gestao_producao_chopp/core/di/usecases/anotacao_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/screens/inseriranotacoes/buscar_anotacoes_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buscar_anotacoes_notifier.g.dart';

@riverpod
class BuscarAnotacoesNotifier extends _$BuscarAnotacoesNotifier {
  @override
  BuscarAnotacoesState build() => BuscarAnotacoesState.inicial();
  int _quantidade = -1;

  Future<void> buscarAll({required String gradeId, required String producaoId}) async {
    state = BuscarAnotacoesState.carregando();

    final useCase = ref.read(getAllAnotacoesUseCaseProvider);
    final result = await useCase(gradeId: gradeId, producaoId: producaoId);

    result.fold(
        (failure) => state = BuscarAnotacoesState.erro(failure),
        (lista) {
          _quantidade = lista.length;
          return state = BuscarAnotacoesState.sucessoComDados(lista);
        },
    );
  }

  Future<void> deletar({
    required String gradeId,
    required String producaoId,
    required String anotacaoId,
  }) async {
    state = BuscarAnotacoesState.inicial();

    final useCase = ref.read(deleteAnotacaoUseCaseProvider);
    final result = await useCase(
      gradeId: gradeId,
      producaoId: producaoId,
      anotacaoId: anotacaoId
    );

    result.fold(
        (failure) => state = BuscarAnotacoesState.erro(failure),
        (_) {
          buscarAll(gradeId: gradeId, producaoId: producaoId);
          return state = BuscarAnotacoesState.sucesso();
        }
    );
  }

  int get quantidadeAnotacoes => _quantidade;
}
