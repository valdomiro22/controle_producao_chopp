import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/common/widgets/app_drawer.dart';
import 'package:gestao_producao_chopp/features/grades/presentation/screens/lista_grades/lista_grades_state.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/error/failure.dart';
import '../../widgets/item_grade_widget.dart';
import 'lista_grades_notifier.dart';

class ListaGradesScreen extends ConsumerStatefulWidget {
  const ListaGradesScreen({super.key});

  @override
  ConsumerState<ListaGradesScreen> createState() => _ListaGradesScreenState();
}

class _ListaGradesScreenState extends ConsumerState<ListaGradesScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(listaGradesProvider.notifier).listarGrades();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(listaGradesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Grades'),
      ),
      drawer: AppDrawer(),
      body: state.when(
          inicial: () => const SizedBox(),
          carregando: () => const Center(child: CircularProgressIndicator()),
          sucesso: () => const SizedBox(),
          erro: (Failure failure) => Center(child: Text(failure.message)),
          sucessoComDados: (lista) {

            if (lista.isEmpty) {
              return SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: const Center(child: Text('Adicione uma nova Grade')),
                ),
              );
            }

            return Padding(
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: lista.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: GestureDetector(
                      onTap: () {
                        context.push(AppRoutesNames.listaProducoes, extra: lista[index].id);
                      },
                      child: ItemGradeWidget(
                          grade: lista[index]
                      ),
                    ),
                  );
                },
              ),
            );
          },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(AppRoutesNames.adicionarGrade),
        child: const Icon(Icons.add),
      ),
    );
  }
}
