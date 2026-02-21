import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/theme/app_colors.dart';
import 'package:gestao_producao_chopp/features/tipobarril/presentation/screens/listatipobarril/deletar_tipo_barril_notifier.dart';
import 'package:gestao_producao_chopp/features/tipobarril/presentation/screens/listatipobarril/lista_tipo_barril_notifier.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';

class ListaTipoBarrilScreen extends ConsumerWidget {
  const ListaTipoBarrilScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncLista = ref.watch(listaTipoBarrilProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tipos de Barris'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: asyncLista.when(
          data: (lista) {
            if (lista.isEmpty) {
              return const Center(child: Text('Nenhum tipo de barril cadastrado'));
            }

            return ListView.builder(
              itemCount: lista.length,
              itemBuilder: (context, i) {
                final item = lista[i];
                return Card(
                  color: Colors.teal[200],
                  child: ListTile(
                    title: Text('Nome: ${item.nome}', style: TextStyle(fontWeight: FontWeight.w600)),
                    subtitle: Row(
                      children: [
                        Text('Volume: ${item.volume.toString()}'),
                        const SizedBox(width: 8),
                        Text('-'),
                        const SizedBox(width: 8),
                        Text(
                          item.isDescartavel ? 'Descartavel' : 'Retornavel',
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontStyle: FontStyle.italic
                          ),
                        )
                      ],
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        ref.read(deletarTipoBarrilProvider.notifier).deletar(item.id!);
                      },
                      icon: Icon(Icons.delete, color: Colors.black38,),
                    ),
                  ),
                );
              },
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, st) => Center(child: Text('Erro: $e')),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(AppRoutesNames.addTipoBarril),
        child: Icon(Icons.add),
      ),
    );
  }
}