import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/entities/tipo_barril_entity.dart';
import 'package:gestao_producao_chopp/core/di/usecases/tipo_barril_use_cases_provider.dart';

part 'lista_tipo_barril_notifier.g.dart';

@riverpod
class ListaTipoBarrilNotifier extends _$ListaTipoBarrilNotifier {

  @override
  AsyncValue<List<TipoBarrilEntity>> build() {
    _buscar();
    return const AsyncValue.loading();
  }

  Future<void> buscar() async => _buscar();

  Future<void> _buscar() async {
    state = await AsyncValue.guard(() async {
      final useCase = ref.read(getAllTipoBarrilUseCaseProvider);
      final result = await useCase();

      return result.fold(
          (failure) => throw failure,
          (lista) => lista,
      );
    });
  }

  Future<void> deletar(String tpId) async {
    state = const AsyncValue.loading();

    final useCase = ref.read(deleteTipoBarrilUseCaseProvider);
    final result = await useCase(tpId);

    if (!ref.mounted) return;

    if (result.isLeft()) {
      result.leftMap((failure) => state = AsyncValue.error(failure, StackTrace.current));
    } else {
      await _buscar();
    }
  }
}