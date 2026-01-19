import 'package:gestao_producao_chopp/features/grades/domain/enums/turno.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selecionar_turno_notifier.g.dart';

@riverpod
class SelecionarTurnoNotifier extends _$SelecionarTurnoNotifier {

  @override
  SelecionarTurnoState build() => SelecionarTurnoState.inicial();

  void selecionarTurno(Turno turno) {
    state = state.copyWith(turno: turno);
  }
}

class SelecionarTurnoState {
  final Turno turno;

  const SelecionarTurnoState({
    required this.turno,
});

  SelecionarTurnoState copyWith({
    Turno? turno,
  }) {
    return SelecionarTurnoState(
      turno: turno ?? this.turno,
    );
  }

  const SelecionarTurnoState.inicial() : this(turno: Turno.turnoA);
}