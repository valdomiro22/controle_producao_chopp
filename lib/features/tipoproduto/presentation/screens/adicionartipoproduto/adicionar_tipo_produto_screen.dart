import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/presentation/screens/adicionartipoproduto/adicionar_tipo_produto_notifier.dart';
import 'package:go_router/go_router.dart';

class AdicionarTipoProdutoScreen extends ConsumerStatefulWidget {
  const AdicionarTipoProdutoScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AdicionarTipoProdutoScreenState();
}

class _AdicionarTipoProdutoScreenState extends ConsumerState<AdicionarTipoProdutoScreen> {
  final _nomeController = TextEditingController();
  final _validadeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(adicionarTipoProdutoProvider);
    final notifier = ref.watch(adicionarTipoProdutoProvider.notifier);

    ref.listen(adicionarTipoProdutoProvider, (previous, next) {
      if (next.isSucess) {
        notifier.limparCampos();
        _nomeController.clear();
        _validadeController.clear();
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Adicionar Tipo de Produto',
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Nome'),
            TextField(
              controller: _nomeController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(hintText: 'Ex: Itaipava'),
              onChanged: (v) => notifier.inserirNome(v),
            ),
            if (state.erroNome != null)
              Text(state.erroNome ?? '', style: TextStyle(color: Colors.red, fontSize: 12)),
            const SizedBox(height: 16),

            Text('Prazo de validade'),
            TextField(
              controller: _validadeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Ex: 30'),
              onChanged: (v) => notifier.inserirPrazoValidade(v),
            ),
            if (state.erroValidade != null)
              Text(state.erroValidade ?? '', style: TextStyle(color: Colors.red, fontSize: 12)),
            const SizedBox(height: 16),

            if (state.isLoading == true)
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Center(child: CircularProgressIndicator()),
              ),

            ElevatedButton(
              onPressed: () => notifier.adicionar(),
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}