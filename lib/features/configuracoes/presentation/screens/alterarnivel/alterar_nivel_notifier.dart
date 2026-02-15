import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestao_producao_chopp/core/di/usecases/configuracoes_use_case_provider.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/entities/configuracoes_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'alterar_nivel_notifier.freezed.dart';
part 'alterar_nivel_notifier.g.dart';

@riverpod
class AlterarNivelNotifier extends _$AlterarNivelNotifier {
  @override
  AlterarNivelState build() => AlterarNivelState.inicial();

  void inserirNivel(String v) {
    final nv = int.tryParse(v);
    state = state.copyWith(nivel: nv ?? -1);
  }

  Future<void> alterar() async {
    if (!_validarCampo()) return;

    state = state.copyWith(isLoading: true);

    final useCase = ref.read(insertConfiguracaoUseCaseProvider);
    final config = ConfiguracoesEntity(nivelBuffer: state.nivel);

    final result = await useCase(config);
    result.fold(
      (failure) => state = state.copyWith(erro: failure.message),
      (_) => state = state.copyWith(isLoading: false, isSucess: true),
    );

  }

  bool _validarCampo() {
    bool valido = true;
    String? erro;

    if (state.nivel == -1) {
      valido = false;
      erro = 'Digite o nível';
    }

    state = state.copyWith(erroNivel: erro);
    return valido;
  }

  void limpar() => state = AlterarNivelState.inicial();
}


@freezed
sealed class AlterarNivelState with _$AlterarNivelState {
  const factory AlterarNivelState ({
    @Default(-1) int nivel,
    String? erroNivel,
    String? erro,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool camposValidos,
  }) = _AlterarNivelState;

  factory AlterarNivelState.inicial() => const AlterarNivelState();
}