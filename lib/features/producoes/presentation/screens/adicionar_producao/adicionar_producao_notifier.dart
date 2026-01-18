import 'package:gestao_producao_chopp/core/common/states/app_state.dart';
import 'package:gestao_producao_chopp/core/di/usecases/producao_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/adicionar_producao/form_adicionar_producao_notifier.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/lista_producoes/lista_producoes_notifier.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/states/producao_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'adicionar_producao_notifier.g.dart';

@riverpod
class AdicionarProducaoNotifier extends _$AdicionarProducaoNotifier {
  @override
  AppState<ProducaoEntity> build() => AppState.inicial();

  Future<void> adicionarProducao(String gradeId) async {

    state = AppState.carregando();

    final form = ref.read(formAdicionarProducaoProvider);
    final usecase = ref.read(insertProducaoUseCaseProvider);
    final result = await usecase(
      gradeId: gradeId,
      quantidade: form.quantidade,
      tipoProduto: form.produto,
      tipoBarril: form.barril,
      data: form.data,
    );

    result.fold(
          (failure) => state = AppState.erro(failure),
          (_) {
            ref.read(listaProducoesProvider.notifier).listarProducoes(gradeId);
            return state = AppState.sucesso();
          },
    );

  }
}