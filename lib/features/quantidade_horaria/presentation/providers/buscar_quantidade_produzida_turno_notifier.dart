import 'package:gestao_producao_chopp/core/di/usecases/quantidade_horaria_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/grades/domain/enums/turno.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/presentation/providers/buscar_qt_horaria_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buscar_quantidade_produzida_turno_notifier.g.dart';

@riverpod
class BuscarQuantidadeProduzidaTurnoNotifier extends _$BuscarQuantidadeProduzidaTurnoNotifier {
  @override
  BuscarQtHorariaState build() => BuscarQtHorariaState.inicial();

  Future<void> buscar({required DateTime data, required Turno turno, required String producaoId}) async {
    state = BuscarQtHorariaState.carregando();

    final useCase = ref.read(getQuantidadeProduzidaTurnoUseCaseProvider);
    final result = await useCase(data: data, turno: turno, producaoId: producaoId);

    result.fold(
        (failure) => state = BuscarQtHorariaState.erro(failure),
        (qt) {
          return state = BuscarQtHorariaState.sucessoComDado(qt);
        }
    );
  }
}
