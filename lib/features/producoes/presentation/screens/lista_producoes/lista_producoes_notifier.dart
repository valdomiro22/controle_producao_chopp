import 'package:gestao_producao_chopp/core/common/states/app_state.dart';
import 'package:gestao_producao_chopp/core/di/usecases/producao_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/lista_producoes/lista_producoes_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lista_producoes_notifier.g.dart';

@riverpod
class ListaProducoesNotifier extends _$ListaProducoesNotifier {
  @override
  ListaProducaoState build() => ListaProducaoState.inicial();

  Future<void> listarProducoes(String gradeId) async {
    state = ListaProducaoState.carregando();

    final useCase = ref.read(getAllProducoesUseCaseProvider);
    final result = await useCase(gradeId);

    result.fold(
      (failure) => state = ListaProducaoState.erro(failure),
      (lista) => state = ListaProducaoState.sucessoComLista(lista),
    );
  }

  Future<void> deletarProducao({required String gradeId, required String producaoId}) async {
    state = ListaProducaoState.carregando();

    final useCase = ref.read(deleteProducaoUseCaseProvider);
    final result = await useCase(producaoId: producaoId, gradeId: gradeId);

    result.fold(
        (failure) => state = ListaProducaoState.erro(failure),
        (_) {
          listarProducoes(gradeId);
          return state = ListaProducaoState.sucesso();
        },
    );
  }

  Future<void> atualizarProducao({required String gradeId, required String producaoId, required ProducaoEntity producao,}) async {
    state = ListaProducaoState.carregando();

    final useCase = ref.read(updateProducaoUseCaseProvider);
    final result = await useCase(
      gradeId: gradeId,
      producaoId: producaoId,
      producao: producao
    );

    result.fold(
        (failure) => state = ListaProducaoState.erro(failure),
        (_) {
          listarProducoes(gradeId);
          return state = ListaProducaoState.sucesso();
        },
    );
  }
}