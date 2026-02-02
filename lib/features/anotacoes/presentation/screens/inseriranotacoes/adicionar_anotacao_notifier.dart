import 'package:gestao_producao_chopp/core/di/usecases/anotacao_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/enums/tipo_codigo.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/screens/inseriranotacoes/form_adicionar_anotacao_state.dart';
import 'package:gestao_producao_chopp/features/grades/domain/enums/turno.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entity/anotacao_entity.dart';

part 'adicionar_anotacao_notifier.g.dart';

@riverpod
class AdicionarAnotacaoNotifier extends _$AdicionarAnotacaoNotifier {
  @override
  FormAdicionarAnotacaoState build() => FormAdicionarAnotacaoState.inicial();

  void inserirCodigo(String v) {
    state = state.copyWith(codigo: v);
  }

  Future<void> adicionar({
    required String gradeId,
    required String producaoId,
    required String codigo,
  }) async {
    // if (state.codigo != '') {
    state = state.copyWith(isLoading: true);

    final anotacao = AnotacaoEntity(
      gradeId: gradeId,
      producaoId: producaoId,
      codigo: codigo,
      usuarioId: 'usuarioId',
      nomeUsuario: 'nomeUsuario',
      turno: Turno.turnoA,
      data: DateTime.now(),
      horario: DateTime.now(),
      horarioId: 1500,
      tipoCodigo: TipoCodigo.anotacao,
    );

    final useCase = ref.read(insertAnotacaoUseCaseProvider);
    final result = await useCase(gradeId: gradeId, producaoId: producaoId, anotacao: anotacao);

    result.fold(
      (failure) => state = state.copyWith(isLoading: false, erro: failure.message),
      (_) => state = state.copyWith(isLoading: false, isSucesso: true),
    );
    // }
  }
}
