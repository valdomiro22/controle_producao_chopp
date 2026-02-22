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
      ref.read(listaProducoesProvider.notifier).buscar(widget.gradeId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final listaState = ref.watch(listaProducoesProvider);
    final listaNotifier = ref.watch(listaProducoesProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Produções')),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: RefreshIndicator(
            onRefresh: () async {
              await listaNotifier.buscar(widget.gradeId);
            },

            child: listaState.when(
              error: (error, stackTrace) => Center(child: Text('Erro: $error')),
              loading: () => const Center(child: CircularProgressIndicator()),
              data: (lista) {
                return ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: lista.length,
                  itemBuilder: (context, index) {
                    final producao = lista[index];

                    return Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: GestureDetector(
                        onTap: () {
                          final gradeId = lista[index].gradeId;
                          final producaoId = lista[index].id!;

                          context.push(
                            AppRoutesNames.home, extra: (producaoId: producaoId, gradeId: gradeId),
                          );
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
        child: const Icon(Icons.add),
      ),
    );
  }
}
