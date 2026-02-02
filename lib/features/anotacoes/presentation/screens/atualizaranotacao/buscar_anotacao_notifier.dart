import 'package:gestao_producao_chopp/core/di/usecases/anotacao_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/state/anotacao_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buscar_anotacao_notifier.g.dart';

@riverpod
class BuscarAnotacaoNotifier extends _$BuscarAnotacaoNotifier {
  @override
  AnotacaoState build() => AnotacaoState.inicial();

  Future<void> buscar({
    required String gradeId,
    required String producaoId,
    required String anotacaoId,
  }) async {
    state = AnotacaoState.inicial();

    final useCase = ref.read(getAnotacaoUseCaseProvider);
    final result = await useCase(gradeId: gradeId, producaoId: producaoId, anotacaoId: anotacaoId);

    result.fold(
        (failure) => state = AnotacaoState.erro(failure),
        (dado) {
          return state = AnotacaoState.sucessoComDado(dado!);
        }
    );
  }
}
