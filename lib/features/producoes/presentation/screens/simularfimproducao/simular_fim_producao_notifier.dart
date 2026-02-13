import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'simular_fim_producao_notifier.freezed.dart';

part 'simular_fim_producao_notifier.g.dart';

@riverpod
class SimularFimProducaoNotifier extends _$SimularFimProducaoNotifier {
  @override
  SimularFimState build() => SimularFimState.inicial();

  void inserirQtProgramada(String qt) {
    final quantidade = int.tryParse(qt) ?? 0;
    state = state.copyWith(programado: quantidade);
  }

  void inserirQtProduzida(String qt) {
    final quantidade = int.tryParse(qt) ?? 0;
    state = state.copyWith(prodizido: quantidade);
  }

  void inserirNivel(String qt) {
    final quantidade = int.tryParse(qt) ?? 0;
    state = state.copyWith(nivelMax: quantidade);
  }

  void calcular({
    required int programado,
    required int produzido,
    required int nivelMax,
    required int vlBarril,
  }) {
    state = state.copyWith(isLoading: true);

    // final vlTotal = programado * vlBarril / 100.0;
    final vlNecessario = (programado - produzido) * vlBarril / 100.0;
    final isSuficiente = vlNecessario < nivelMax ? true : false;

    state = state.copyWith(isSuficiente: isSuficiente);
    state = state.copyWith(
      isLoading: false,
      isSucess: true,
      isSuficiente: isSuficiente,
      vlNecessario: vlNecessario,
    );
  }
}

@freezed
sealed class SimularFimState with _$SimularFimState {
  const factory SimularFimState({
    @Default(0) int programado,
    @Default(0) int prodizido,
    @Default(0) int nivelMax,
    @Default(0.0) double vlNecessario,
    @Default(false) bool isSuficiente,
    String? erro,
    String? erroProgramado,
    String? erroProduzido,
    String? erroNivelMax,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool camposValidos,
  }) = _SimularFimState;

  factory SimularFimState.inicial() => const SimularFimState();
}
