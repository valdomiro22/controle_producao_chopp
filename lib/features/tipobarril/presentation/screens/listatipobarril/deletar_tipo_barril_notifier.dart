import 'package:gestao_producao_chopp/core/di/usecases/grade_use_cases_provider.dart';
import 'package:gestao_producao_chopp/core/di/usecases/tipo_barril_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/tipobarril/presentation/screens/listatipobarril/tipo_barril_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gestao_producao_chopp/core/di/usecases/tipo_barril_use_cases_provider.dart';

part 'deletar_tipo_barril_notifier.g.dart';

@riverpod
class DeletarTipoBarrilNotifier extends _$DeletarTipoBarrilNotifier {
  @override
  AsyncValue<void> build() => const AsyncValue.data(null);

  Future<void> deletar(String tpId) async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final useCase = ref.read(deleteTipoBarrilUseCaseProvider);
      final result = await useCase(tpId);

      return result.fold(
        (failure) => throw failure, // cai em AsyncError
        (_) => null, // sucesso
      );
    });
  }
}
