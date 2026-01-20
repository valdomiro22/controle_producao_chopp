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

  void inserirQuantidade(String quantidade) {
    print('digitado: $quantidade');
    state = state.copyWith(quantidade: quantidade);
  }
}

class SelecionarTurnoState {
  final Turno turno;
  final String? quantidade;

  const SelecionarTurnoState({
    required this.turno,
    this.quantidade,
});

  SelecionarTurnoState copyWith({
    Turno? turno,
    String? quantidade,
  }) {
    return SelecionarTurnoState(
      turno: turno ?? this.turno,
      quantidade: quantidade ?? this.quantidade,
    );
  }

  const SelecionarTurnoState.inicial() : this(turno: Turno.turnoA);
}