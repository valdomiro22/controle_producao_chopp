import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/constants/app_dimens.dart';
import 'package:gestao_producao_chopp/features/grades/domain/enums/barril.dart';
import 'package:gestao_producao_chopp/features/grades/domain/enums/produto.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/adicionar_producao/adicionar_producao_notifier.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/adicionar_producao/form_adicionar_producao_state.dart';
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

  @override
  void dispose() {
    super.dispose();
    _ordemController.dispose();
    _qtController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(adicionarProducaoProvider);
    final notifier = ref.watch(adicionarProducaoProvider.notifier);

    final gradeId = widget.gId;

    ref.listen(adicionarProducaoProvider, (previous, next) {
      if (next.isSucess) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Producao criada'),
            duration: Duration(seconds: 2),
            behavior: SnackBarBehavior.floating,
          ),
        );
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
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.teal,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<Produto>(
                        dropdownColor: Colors.brown[200],
                        borderRadius: BorderRadius.circular(10),
                        isDense: false,
                        hint: const Text('Tipo de Barril', style: TextStyle(color: Colors.white)),
                        value: state.produto,
                        items: Produto.values.map((Produto produto) {
                          return DropdownMenuItem<Produto>(
                            value: produto,
                            child: Text(produto.label, style: TextStyle(color: Colors.black)),
                          );
                        }).toList(),
                        onChanged: (Produto? produto) {
                          notifier.selecionarProduto(produto);
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),

                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.teal,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<Barril>(
                        dropdownColor: Colors.brown[200],
                        borderRadius: BorderRadius.circular(10),
                        isDense: false,
                        hint: const Text('Tipo de Barril', style: TextStyle(color: Colors.white)),
                        value: state.barril,
                        items: Barril.values.map((Barril barril) {
                          return DropdownMenuItem<Barril>(
                            value: barril,
                            child: Text(barril.label, style: TextStyle(color: Colors.black)),
                          );
                        }).toList(),
                        onChanged: (Barril? barril) {
                          notifier.selecionarBarril(barril);
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16,),

            TextField(
              controller: _qtController,
              decoration: InputDecoration(
                labelText: 'Quantidade',
                hintText: 'Ex: 50',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) => notifier.atualizaQuantidade(value),
            ),

            TextField(
              controller: _ordemController,
              decoration: InputDecoration(
                labelText: 'Ordem',
                hintText: 'Ex: 10682909',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) => notifier.setOrdem(value),
            ),


            if (state.erro != null)
              Text(
                state.erro!,
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),

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
                  notifier.adicionarProducao(gradeId);
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
