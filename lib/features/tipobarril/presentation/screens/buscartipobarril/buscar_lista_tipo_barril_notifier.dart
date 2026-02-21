import 'package:gestao_producao_chopp/core/di/usecases/tipo_barril_use_cases_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/tipo_barril_entity.dart';

part 'buscar_lista_tipo_barril_notifier.g.dart';

@riverpod
class BuscarListaTipoBarrilNotifier extends _$BuscarListaTipoBarrilNotifier {
  @override
  AsyncValue<List<TipoBarrilEntity>> build() {
    return const AsyncValue.loading(); // ou const AsyncValue.data([])
  }

  Future<void> buscar() async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final useCase = ref.read(getAllTipoBarrilUseCaseProvider);
      final result = await useCase();

      return result.fold(
        (failure) => throw failure, // joga o Failure pra cair no AsyncError
        (lista) => lista,
      );
    });
  }
}
