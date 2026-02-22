import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/presentation/screens/listatipoproduto/lista_tipo_produto_notifier.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';

class ListaTipoProdutoScreen extends ConsumerStatefulWidget {
  const ListaTipoProdutoScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ListaTipoProdutoScreenState();
}

class _ListaTipoProdutoScreenState extends ConsumerState<ListaTipoProdutoScreen> {

  @override
  Widget build(BuildContext context) {
    final listaAsync = ref.watch(listaTipoProdutoProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lista de tipos de produtos',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: listaAsync.when(
          data: (lista) {
            if (lista.isEmpty) {
              return const Center(child: Text('Nenhum tipo de produto cadastrado'));
            }
            
            return ListView.builder(
              itemCount: lista.length,
              itemBuilder: (context, index) {
                final item = lista[index];
                
                return Card(
                  color: Colors.teal[200],
                  child: ListTile(
                    title: Text(item.nome, style: TextStyle(fontWeight: FontWeight.w600)),
                    subtitle: Text('${item.prazoValidade} dias'),
                    trailing: IconButton(
                      onPressed: () async {
                        // await ref.read(deletarTipoProdutoProvider.notifier).deletar(item.id!);
                        ref.read(listaTipoProdutoProvider.notifier).deletar(item.id!);
                      },
                      icon: Icon(Icons.delete, color: Colors.black38,),
                    ),
                  ),
                );
              },
            );
          },
          error: (error, stackTrace) => Center(child: Text('Erro: $error')),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(AppRoutesNames.adicionarTipoProduto);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}