import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/lista_producoes/lista_producoes_notifier.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/widgets/item_producao_widget.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';

class ListaProducoesScreen extends ConsumerStatefulWidget {
  final String gradeId;

  const ListaProducoesScreen({super.key, required this.gradeId});

  @override
  ConsumerState<ListaProducoesScreen> createState() => _ListaProducoesScreenState();
}

class _ListaProducoesScreenState extends ConsumerState<ListaProducoesScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(listaProducoesProvider.notifier).listarProducoes(widget.gradeId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final listaState = ref.watch(listaProducoesProvider);
    final listaNotifier = ref.watch(listaProducoesProvider.notifier);
    
    // final deletarState = ref.watch(deletp)

    return Scaffold(
      appBar: AppBar(title: Text('Lista de Produções')),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: RefreshIndicator(
            onRefresh: () async {
              await listaNotifier.listarProducoes(widget.gradeId);
            },
            child: Builder(
              builder: (context) {
                if (listaState.isCarregando) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (listaState.isErro) {
                  return Center(
                    child: Text(
                      'Erro: ${listaState.erro?.message ?? 'Tente novamente'}',
                      style: const TextStyle(color: Colors.red),
                    ),
                  );
                }

                final lista = listaState.lista ?? [];
                debugPrint('lista pesquisada: ${lista.length}');

                if (lista.isEmpty) {
                  return SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: const Center(child: Text('Nenhuma grade cadastrada ainda')),
                    ),
                  );
                }

                return ListView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: lista.length,
                  itemBuilder: (context, index) {
                    final producao = lista[index];

                    return Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: GestureDetector(
                        onTap: () {
                          // context.push(AppRoutesNames.adicionarProducao, extra: lista[index]);
                          context.push(AppRoutesNames.home, extra: lista[index]);
                        },
                        child: ItemProducaoWidget(producao: producao),
                      ),
                    );

                  },
                );
              },
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(AppRoutesNames.adicionarProducao, extra: widget.gradeId),
        child: Icon(Icons.add),
      ),
    );
  }
}
