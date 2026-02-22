import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestao_producao_chopp/core/di/usecases/tipo_produto_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/entities/tipo_produto_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../listatipoproduto/lista_tipo_produto_notifier.dart';

part 'adicionar_tipo_produto_notifier.g.dart';
part 'adicionar_tipo_produto_notifier.freezed.dart';

@riverpod
class AdicionarTipoProdutoNotifier extends _$AdicionarTipoProdutoNotifier {
  @override
  AdicionarTipoProdutoState build() => AdicionarTipoProdutoState.inicial();

  void inserirNome(String v) => state = state.copyWith(nome: v);
  
  void inserirPrazoValidade(String v) {
    final intValue = int.tryParse(v);
    state = state.copyWith(prazoValidade: intValue ?? -1);
  }

  Future<void> adicionar() async {
    if (!_validar()) return;

    state = state.copyWith(isLoading: true);

    final useCase = ref.read(insertTipoProdutoUseCaseProvider);
    final tipoProduto = TipoProdutoEntity(nome: state.nome, prazoValidade: state.prazoValidade);

    final result = await useCase(tipoProduto);
    result.fold(
        (failure) => state = state.copyWith(erro: failure.message),
        (_) {
          ref.invalidate(listaTipoProdutoProvider);
          return state = state.copyWith(isLoading: false, isSucess: true);
        },
    );
  }

  bool _validar() {
    bool validos = true;
    String? erNome;
    String? erPrazo;

    if (state.nome.isEmpty) {
      validos = false;
      erNome = 'Digite o nome';
    }

    if (state.prazoValidade <= 0) {
      validos = false;
      erPrazo = 'Digite o prazo de validade';
    }

    state = state.copyWith(erroNome: erNome, erroValidade: erPrazo);
    return validos;
  }

  void limparCampos() => AdicionarTipoProdutoState.inicial();
}


@freezed
sealed class AdicionarTipoProdutoState with _$AdicionarTipoProdutoState {
  const factory AdicionarTipoProdutoState({
    @Default('') String nome,
    @Default(0) int prazoValidade,
    String? erro,
    String? erroNome,
    String? erroValidade,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool camposValidos,
}) = _AdicionarTipoProdutoState;

  factory AdicionarTipoProdutoState.inicial() => const AdicionarTipoProdutoState();

}