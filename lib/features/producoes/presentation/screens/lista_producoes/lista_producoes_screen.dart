import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/home/home_screen.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/lista_producoes/lista_producoes_notifier.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/widgets/item_producao_widget.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';

import 'lista_producoes_state.dart';

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

    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Produções')),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: RefreshIndicator(
            onRefresh: () async {
              await listaNotifier.listarProducoes(widget.gradeId);
            },
            // Aqui começa a mágica do Freezed
            child: listaState.when(
              // 1. Estado Inicial (geralmente exibe loading até o initState buscar os dados)
              inicial: () => const Center(child: CircularProgressIndicator()),

              // 2. Carregando
              carregando: () => const Center(child: CircularProgressIndicator()),

              // 3. Sucesso vazio (transição de delete/update)
              // Como não temos lista aqui, exibimos um loading para não quebrar a tela
              sucesso: () => const Center(child: CircularProgressIndicator()),

              // 4. Erro
              erro: (failure) => Center(
                child: Text(
                  'Erro: ${failure.message}',
                  style: const TextStyle(color: Colors.red),
                ),
              ),

              // 5. Sucesso com a Lista (Onde a UI real acontece)
              sucessoComLista: (lista) {
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
                            AppRoutesNames.home,
                            extra: (
                            producaoId: producaoId,
                            gradeId: gradeId,
                            ),
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
