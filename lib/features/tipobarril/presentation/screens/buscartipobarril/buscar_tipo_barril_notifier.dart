import 'package:gestao_producao_chopp/core/di/usecases/tipo_barril_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/entities/tipo_barril_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buscar_tipo_barril_notifier.g.dart';

@riverpod
class BuscarTipoBarrilNotifier extends _$BuscarTipoBarrilNotifier {
  @override
  AsyncValue<TipoBarrilEntity?> build() => const AsyncValue.data(null);

  Future<void> buscar(String tpId) async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final useCase = ref.read(getTipoBarrilUseCaseProvider);
      final result = await useCase(tpId);

      return result.fold(
          (failure) => throw failure,
          (tp) => tp,
      );
    });
  }
}