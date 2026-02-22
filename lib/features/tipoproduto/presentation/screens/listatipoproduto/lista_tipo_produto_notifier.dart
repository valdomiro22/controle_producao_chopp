import 'package:gestao_producao_chopp/core/di/usecases/tipo_produto_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/entities/tipo_produto_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lista_tipo_produto_notifier.g.dart';

@riverpod
class ListaTipoProdutoNotifier extends _$ListaTipoProdutoNotifier {

  @override
  AsyncValue<List<TipoProdutoEntity>> build() {
    _buscar();
    return const AsyncValue.loading();
  }

  Future<void> buscar() async => _buscar();

  Future<void> _buscar() async {

    state = await AsyncValue.guard(() async {
      final useCase = ref.read(getAllTipoProdutoUseCaseProvider);
      final result = await useCase();

      return result.fold(
            (failure) => throw failure,
            (lista) => lista,
      );
    });
  }

  Future<void> deletar(String tpId) async {

    final useCase = ref.read(deleteTipoProdutoUseCaseProvider);
    final result = await useCase(tpId);

    if (!ref.mounted) return;

    if (result.isLeft()) {
      result.leftMap((failure) {
        state = AsyncValue.error(failure, StackTrace.current);
      });
    } else {
      await _buscar();
    }
  }
}