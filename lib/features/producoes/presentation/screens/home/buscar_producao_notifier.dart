import 'package:gestao_producao_chopp/core/di/usecases/producao_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buscar_producao_notifier.g.dart';

@riverpod
class BuscarProducaoNotifier extends _$BuscarProducaoNotifier {

  @override
  Future<ProducaoEntity?> build() => Future.value(null);

  Future<void> buscar({required String gradeId, required String producaoId,}) async {
    state = const AsyncLoading();

    final useCase = ref.read(gerProducaoUseCaseProvider);
    final result = await useCase(gradeId: gradeId, producaoId: producaoId);

    state = result.fold(
        (failure) => AsyncError(failure, StackTrace.current),
        (producao) => AsyncData(producao),
    );
  }
}