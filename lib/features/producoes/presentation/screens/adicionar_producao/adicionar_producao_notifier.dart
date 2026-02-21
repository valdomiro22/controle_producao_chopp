import 'package:gestao_producao_chopp/core/di/usecases/producao_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/adicionar_producao/form_adicionar_producao_state.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/lista_producoes/lista_producoes_notifier.dart';
import 'package:gestao_producao_chopp/features/tipobarril/presentation/screens/buscartipobarril/buscar_lista_tipo_barril_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../tipobarril/domain/entities/tipo_barril_entity.dart';
import '../../../domain/enums/status_producao.dart';

part 'adicionar_producao_notifier.g.dart';

@riverpod
class AdicionarProducaoNotifier extends _$AdicionarProducaoNotifier {
  @override
  FormAdicionarProducaoState build() => FormAdicionarProducaoState.inicial();

  void selecionarProduto(String? produto) => state = state.copyWith(produtoId: produto);

  void selecionarBarril(TipoBarrilEntity? barril) => state = state.copyWith(tipoBarrilId: barril?.id);

  void atualizaQuantidade(String value) {
    // Mantém o valor como string no estado para validação posterior
    final valorRecebido = value.trim();
    state = state.copyWith(quantidade: valorRecebido.isEmpty ? null : valorRecebido);
  }

  // Future<void> adicionarProducao(String gradeId) async {
  //   final barris = ref.read(buscarListaTipoBarrilProvider).value ?? [];
  //   // 1. Valida antes de tudo
  //   if (!_validarCampos()) return;
  //
  //   state = state.copyWith(isLoading: true);
  //
  //   try {
  //     final usecase = ref.read(insertProducaoUseCaseProvider);
  //
  //     // Aqui é seguro usar '!' pois o _validarCampos garantiu que não é nulo e é numérico
  //     final quantidade = int.parse(state.quantidade!);
  //     final barril = barris.firstWhere(
  //         (b) => b.id == state.tipoBarrilId,
  //     );
  //
  //     final producao = ProducaoEntity(
  //       gradeId: gradeId,
  //       status: StatusProducao.naoConcluido,
  //       // tipoBarril: barril,
  //       produto: state.produto!,
  //       quantidadeProgramada: quantidade,
  //       dataCriacao: DateTime.now(),
  //       tipoBarrilId: '',
  //     );
  //
  //     final result = await usecase(producao: producao, gradeId: gradeId);
  //
  //     result.fold((failure) => state = state.copyWith(isLoading: false, erro: failure.message), (
  //       _,
  //     ) {
  //       // Atualiza a lista na outra tela
  //       ref.read(listaProducoesProvider.notifier).listarProducoes(gradeId);
  //       state = state.copyWith(isLoading: false, isSucess: true);
  //     });
  //   } catch (e) {
  //     state = state.copyWith(isLoading: false, erro: 'Erro inesperado: $e');
  //   }
  // }

  bool _validarCampos() {
    bool camposValidos = true;
    String? erroProduto;
    String? erroBarril;
    String? erroQuantidade;

    // Validação Produto
    if (state.produtoId == null) {
      erroProduto = 'Selecione um produto';
      camposValidos = false;
    }

    // Validação Barril
    if (state.tipoBarrilId == null) {
      erroBarril = 'Selecione um tipo de barril';
      camposValidos = false;
    }

    if (state.quantidade == null || state.quantidade!.isEmpty) {
      erroQuantidade = 'Digite a quantidade';
      camposValidos = false;
    } else {
      // Só entra aqui se NÃO for nulo, evitando o crash
      final valorInt = int.tryParse(state.quantidade!);

      if (valorInt == null) {
        erroQuantidade = 'Número inválido';
        camposValidos = false;
      } else if (valorInt <= 0) {
        erroQuantidade = 'Deve ser maior que zero';
        camposValidos = false;
      }
    }

    // Atualiza o estado com os erros (ou null se estiver tudo ok)
    state = state.copyWith(
      erroQuantidade: erroQuantidade,
      erroBarril: erroBarril,
      erroProduto: erroProduto,
      // Limpa os erros anteriores se o campo estiver válido agora
    );

    return camposValidos;
  }

  void limpar() {
    state = FormAdicionarProducaoState.inicial();
  }
}
