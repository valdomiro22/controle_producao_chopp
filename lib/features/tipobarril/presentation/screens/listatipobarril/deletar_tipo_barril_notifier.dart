import 'package:gestao_producao_chopp/core/di/usecases/grade_use_cases_provider.dart';
import 'package:gestao_producao_chopp/core/di/usecases/tipo_barril_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/tipobarril/presentation/screens/listatipobarril/tipo_barril_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'deletar_tipo_barril_notifier.g.dart';

@riverpod
class DeletarTipoBarrilNotifier extends _$DeletarTipoBarrilNotifier {
  @override
  TipoBarrilState build() => TipoBarrilState.inicial();

  Future<void> deletar(String tpId) async {
    state = TipoBarrilState.carregando();

    final useCase = ref.read(deleteTipoBarrilUseCaseProvider);
    final result = await useCase(tpId);

    result.fold(
      (failure) => state = TipoBarrilState.erro(failure),
      (_) => state = TipoBarrilState.sucesso(),
    );
  }
}

