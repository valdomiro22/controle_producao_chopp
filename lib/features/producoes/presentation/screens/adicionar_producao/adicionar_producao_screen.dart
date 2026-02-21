import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/constants/app_dimens.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/adicionar_producao/adicionar_producao_notifier.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/entities/tipo_barril_entity.dart';
import 'package:gestao_producao_chopp/features/tipobarril/presentation/screens/buscartipobarril/buscar_lista_tipo_barril_notifier.dart';
import 'package:go_router/go_router.dart';

class AdicionarProducaoScreen extends ConsumerStatefulWidget {
  final String gId;
  const AdicionarProducaoScreen({super.key, required this.gId,});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AdicionarProducaoScreenState();
}

class _AdicionarProducaoScreenState extends ConsumerState<AdicionarProducaoScreen> {
  final _qtController = TextEditingController();
  final _ordemController = TextEditingController();
  final _codigoController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _ordemController.dispose();
    _qtController.dispose();
    _codigoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(adicionarProducaoProvider);
    final notifier = ref.watch(adicionarProducaoProvider.notifier);
    final listaBarris = ref.watch(buscarListaTipoBarrilProvider);

    final gradeId = widget.gId;

    ref.listen(adicionarProducaoProvider, (previous, next) {
      if (next.isSucess) {
        notifier.limpar();
        _qtController.clear();
        _ordemController.clear();
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text('Adicionar Produção')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppDimens.spacingG),
        child: Column(
          children: [
            Row(
              children: [
                if (state.erro != null)
                  Text(
                    state.erro!,
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),

                // Produto
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.teal,
                    ),
                    // child: DropdownButtonHideUnderline(
                    //   child: DropdownButton<Produto>(
                    //     dropdownColor: Colors.brown[200],
                    //     borderRadius: BorderRadius.circular(10),
                    //     isDense: false,
                    //     hint: const Text('Produto', style: TextStyle(color: Colors.white)),
                    //     value: state.produto,
                    //     items: Produto.values.map((Produto produto) {
                    //       return DropdownMenuItem<Produto>(
                    //         value: produto,
                    //         child: Text(produto.label, style: TextStyle(color: Colors.black)),
                    //       );
                    //     }).toList(),
                    //     onChanged: (Produto? produto) {
                    //       notifier.selecionarProduto(produto);
                    //     },
                    //   ),
                    // ),
                  ),
                ),
                SizedBox(width: 16),

                // Barril
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.teal,
                    ),
                    child: listaBarris.when(
                      data: (lista) {
                        // return DropdownButtonHideUnderline(
                        //   child: DropdownButton<TipoBarrilEntity>(
                        //     dropdownColor: Colors.brown[200],
                        //     borderRadius: BorderRadius.circular(10),
                        //     isDense: false,
                        //     hint: const Text('Barril', style: TextStyle(color: Colors.white)),
                        //     value: state.barril,
                        //     items: lista.map((barril) {
                        //       return DropdownMenuItem<Barril>(
                        //             value: barril,
                        //             child: Text(barril.label, style: TextStyle(color: Colors.black)),
                        //           );
                        //     }).toList(),
                        //     onChanged: (TipoBarrilEntity? barril) {
                        //       notifier.selecionarBarril(barril);
                        //     },
                        //   ),
                        // );
                        return null;
                      },
                      loading: () => const Center(child: CircularProgressIndicator()),
                      error: (e, st) => const Text('Erro ao carregar'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16,),

            TextField(
              controller: _qtController,
              decoration: InputDecoration(
                labelText: 'Quantidade',
                hintText: 'Ex: 50',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) => notifier.atualizaQuantidade(value),
            ),
            const SizedBox(height: 8),

            if (state.isLoading == true)
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),

            SizedBox(height: 16,),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // notifier.adicionarProducao(gradeId);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal
                ),
                child: Text('Salvar', style: TextStyle(color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
