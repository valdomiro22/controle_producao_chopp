import 'package:gestao_producao_chopp/core/di/usecases/producao_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/adicionar_producao/form_adicionar_producao_state.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/lista_producoes/lista_producoes_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../grades/domain/enums/barril.dart';
import '../../../../grades/domain/enums/produto.dart';
import '../../../domain/enums/status_producao.dart';

part 'adicionar_producao_notifier.g.dart';

@riverpod
class AdicionarProducaoNotifier extends _$AdicionarProducaoNotifier {
  @override
  FormAdicionarProducaoState build() => FormAdicionarProducaoState.inicial();

  void selecionarProduto(Produto? produto) => state = state.copyWith(produto: produto);
  void selecionarBarril(Barril? barril) => state = state.copyWith(barril: barril);
  void setOrdem(String or) {
    final ordem = int.tryParse(or);

    int intOrdem = 0;
    ordem != null ? intOrdem = ordem : intOrdem = -1;

    state = state.copyWith(ordem: intOrdem);
  }

  void setCodigo(String cd) {
    final codigo = int.tryParse(cd);

    int intCodigo = 0;
    codigo != null ? intCodigo = codigo : intCodigo = -1;

    state = state.copyWith(codigo: intCodigo);
  }

  void atualizaQuantidade(String value) {
    final valorRecebido = value.trim();
    state = state.copyWith(
        quantidade: valorRecebido.isEmpty ? null : valorRecebido
    );
  }

  Future<void> adicionarProducao(String gradeId) async {
    if (!_validarCampos()) return;

    state = state.copyWith(isLoading: true);

    final usecase = ref.read(insertProducaoUseCaseProvider);
    final quantidade = int.parse(state.quantidade!);

    final producao = ProducaoEntity(
      gradeId: gradeId,
      status: StatusProducao.naoConcluido,
      tipoBarril: state.barril!,
      ordem: state.ordem,
      codigo: state.codigo,
      produto: state.produto!,
      quantidadeProgramada: quantidade,
      dataCriacao: DateTime.now(),
      volumeNecessarioHl: 999.9,
    );

    final result = await usecase(producao: producao, gradeId: gradeId);

    result.fold(
          (failure) => state = state.copyWith(isLoading: false, erro: failure.message),
          (_) {
            ref.read(listaProducoesProvider.notifier).listarProducoes(gradeId);
            return state = state.copyWith(isLoading: false, isSucess: true);
          },
    );

  }

  bool _validarCampos() {
    bool camposValidos = true;
    String? erroProduto;
    String? erroBarril;
    String? erroQuantidade;
    String? erroData;

    if (state.produto == null) {
      erroProduto = 'Selecione um produto';
      camposValidos = false;
    }

    if (state.barril == null) {
      camposValidos = false;
      erroBarril = 'Selecione um tipo de barril';
    }

    if (state.quantidade == null || state.quantidade!.trim().isEmpty) {
      camposValidos = false;
      erroQuantidade = 'Digite a quantidade';
    }

    final quantidadeLimpa = state.quantidade!.trim();
    final valorInt = int.tryParse(quantidadeLimpa);

    if (valorInt == null) {
      camposValidos = false;
      erroQuantidade = 'A quantidade deve ser um número inteiro válido';
    }

    if (valorInt! <= 0) {
      camposValidos = false;
      erroQuantidade = 'A quantidade deve ser maior que zero';
    }

    state = state.copyWith(
      erroQuantidade: erroQuantidade,
      erroBarril: erroBarril,
      erroProduto: erroProduto,
      erroData: erroData,
    );

    return camposValidos;
  }

  void limpar() {
    state = FormAdicionarProducaoState.inicial();
  }
}
