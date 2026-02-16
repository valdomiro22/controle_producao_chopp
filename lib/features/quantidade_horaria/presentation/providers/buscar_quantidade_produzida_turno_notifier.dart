import 'dart:developer' as dev;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestao_producao_chopp/core/di/usecases/quantidade_horaria_use_cases_provider.dart';
import 'package:gestao_producao_chopp/core/utils/string_util.dart';
import 'package:gestao_producao_chopp/features/grades/domain/enums/turno.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/error/failure.dart';
import '../../../producoes/presentation/screens/home/buscar_producao_notifier.dart';
import '../../../producoes/presentation/screens/home/selecionar_turno_notifier.dart';

part 'buscar_quantidade_produzida_turno_notifier.g.dart';
part 'buscar_quantidade_produzida_turno_notifier.freezed.dart';

@riverpod
class BuscarQuantidadeProduzidaTurnoNotifier extends _$BuscarQuantidadeProduzidaTurnoNotifier {
  @override
  BuscarQtTurnoState build() {
    // 1. Assistimos o turno e a produção.
    // Se qualquer um mudar, este build() roda novamente.
    final turnoState = ref.watch(selecionarTurnoProvider);
    final producaoState = ref.watch(buscarProducaoProvider);

    // 2. Só buscamos se tivermos os dados necessários
    producaoState.whenData((producao) {
      if (producao != null) {
        _buscar(
            data: producao.dataCriacao!,
            turno: turnoState.turno,
            // Use o mesmo ID que você usou para salvar no Card!
            producaoId: producao.id ?? ''
        );
      }
    });

    return const BuscarQtTurnoState.inicial();
  }

  Future<void> _buscar({required DateTime data, required Turno turno, required String producaoId}) async {
    state = const BuscarQtTurnoState.carregando();

    final dataPesquisada = StringUtil.formatarData(data.toIso8601String());
    final tunoPesquisado = turno.label;

    dev.log('Data $dataPesquisada - turno: $tunoPesquisado - producaoId: $producaoId');

    final useCase = ref.read(getQuantidadeProduzidaTurnoUseCaseProvider);
    final result = await useCase(data: data, turno: turno, producaoId: producaoId);

    state = result.fold(
          (failure) => state = BuscarQtTurnoState.erro(failure),
          (qt) => state = BuscarQtTurnoState.sucessoComDado(qt),
    );
  }
}

@freezed
class BuscarQtTurnoState with _$BuscarQtTurnoState {
  const factory BuscarQtTurnoState.inicial() = _Inicial;
  const factory BuscarQtTurnoState.carregando() = _Carregando;
  const factory BuscarQtTurnoState.sucessoComDado(int qtHoraria) = _SucessoComDados;
  const factory BuscarQtTurnoState.sucesso() = _Sucesso;
  const factory BuscarQtTurnoState.erro(Failure failure) = _Erro;
}
