import 'dart:developer' as dev;

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gestao_producao_chopp/core/di/usecases/producao_use_cases_provider.dart';
import '../../../domain/entities/producao_entity.dart';

part 'buscar_producao_notifier.g.dart';

@riverpod
class BuscarProducao extends _$BuscarProducao {

  @override
  Future<ProducaoEntity?> build() async {
    return null;
  }

  Future<void> buscar({required String gradeId, required String producaoId}) async {
    await _buscar(gradeId: gradeId, producaoId: producaoId);
  }

  Future<void> _buscar({required String gradeId, required String producaoId}) async {
    state = const AsyncValue.loading();

    dev.log('notifier: pesquisando produção');

    final useCase = ref.read(gerProducaoUseCaseProvider);
    final result = await useCase(gradeId: gradeId, producaoId: producaoId);

    result.fold(
          (failure) {
        dev.log('notifier: deu erro');
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
          (producao) {
        dev.log('notifier: deu certo');
        state = AsyncValue.data(producao);
      },
    );
  }

  void atualizarEstadoLocal(ProducaoEntity producaoAtualizada) {
    state = AsyncValue.data(producaoAtualizada);
  }
}