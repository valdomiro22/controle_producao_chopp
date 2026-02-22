import 'package:gestao_producao_chopp/core/di/usecases/producao_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/lista_producoes/lista_producoes_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lista_producoes_notifier.g.dart';

@riverpod
class ListaProducoesNotifier extends _$ListaProducoesNotifier {
  @override
  AsyncValue<List<ProducaoEntity>> build() {

    return const AsyncValue.loading();
  }

  Future<void> buscar(String gradeId) async => _buscar(gradeId);

  Future<void> _buscar(String gradeId) async {
    state = await AsyncValue.guard(() async {

      final useCase = ref.read(getAllProducoesUseCaseProvider);
      final result = await useCase(gradeId);

      return result.fold(
        (failure) => throw failure,
        (lista) => lista,
      );
    });

  }

  Future<void> deletarProducao({required String gradeId, required String producaoId}) async {
    state = const AsyncValue.loading();

    final useCase = ref.read(deleteProducaoUseCaseProvider);
    final result = await useCase(producaoId: producaoId, gradeId: gradeId);

    if (!ref.mounted) return;

    if (result.isLeft()) {
      result.leftMap((failure) => state = AsyncValue.error(failure, StackTrace.current));
    } else {
      await _buscar(gradeId);
    }
  }

  Future<void> atualizarProducao({required String gradeId, required String producaoId, required ProducaoEntity producao,}) async {
    state = const AsyncValue.loading();

    final useCase = ref.read(updateProducaoUseCaseProvider);
    final result = await useCase(
      gradeId: gradeId,
      producaoId: producaoId,
      producao: producao
    );

    if (!ref.mounted) return;

    if (result.isLeft()) {
      result.leftMap((failure) => state = AsyncValue.error(failure, StackTrace.current));
    } else {
      await _buscar(gradeId);
    }
  }
}