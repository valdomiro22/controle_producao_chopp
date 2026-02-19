import 'dart:developer' as dev;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestao_producao_chopp/core/di/usecases/quantidade_horaria_use_cases_provider.dart';
import 'package:gestao_producao_chopp/core/utils/string_util.dart';
import 'package:gestao_producao_chopp/features/grades/domain/enums/turno.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/error/failure.dart';
import '../../../producoes/presentation/screens/home/buscar_producao_notifier.dart';
import '../../../producoes/presentation/screens/home/selecionar_turno_notifier.dart';

part 'buscar_quantidade_produzida_apos_meia_noite_notifier.g.dart';
part 'buscar_quantidade_produzida_apos_meia_noite_notifier.freezed.dart';

@riverpod
class BuscarQuantidadeProduzidaTurnoNotifier extends _$BuscarQuantidadeProduzidaTurnoNotifier {
  @override
  BuscarQtApos00h build() {
    final turnoState = ref.watch(selecionarTurnoProvider);
    final producaoState = ref.watch(buscarProducaoProvider);

    producaoState.whenData((producao) {
      if (producao != null) {
        _buscarAposMeiaNoite(
            data: producao.dataCriacao!,
            turno: turnoState.turno,
            producaoId: producao.id ?? ''
        );
      }
    });

    return const BuscarQtApos00h.inicial();
  }

  Future<void> _buscarAposMeiaNoite({required DateTime data, required Turno turno, required String producaoId}) async {
    state = const BuscarQtApos00h.carregando();

    final dataPesquisada = StringUtil.formatarData(data.toIso8601String());
    final tunoPesquisado = turno.label;

    dev.log('Data $dataPesquisada - turno: $tunoPesquisado - producaoId: $producaoId');

    final useCase = ref.read(getQtAposMaiaNoiteProvider);
    final result = await useCase(data: data, turno: turno, producaoId: producaoId);

    state = result.fold(
          (failure) => state = BuscarQtApos00h.erro(failure),
          (qt) {
            dev.log('buscar notifier: quantidade retornada: $qt');
            return state = BuscarQtApos00h.sucessoComDado(qt);
          },
    );
  }
}

@freezed
class BuscarQtApos00h with _$BuscarQtApos00h {
  const factory BuscarQtApos00h.inicial() = _Inicial;
  const factory BuscarQtApos00h.carregando() = _Carregando;
  const factory BuscarQtApos00h.sucessoComDado(int qtHoraria) = _SucessoComDados;
  const factory BuscarQtApos00h.sucesso() = _Sucesso;
  const factory BuscarQtApos00h.erro(Failure failure) = _Erro;
}
