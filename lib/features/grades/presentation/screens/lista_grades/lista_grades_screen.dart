import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/common/widgets/app_drawer.dart';
import 'package:gestao_producao_chopp/core/constants/app_dimens.dart';
import 'package:gestao_producao_chopp/features/grades/presentation/screens/lista_grades/lista_grades_state.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/error/failure.dart';
import '../../../domain/entities/grade_entity.dart';
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
          sucessoComDados: (List<GradeEntity>? grades) {
            return Padding(
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: grades!.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: GestureDetector(
                      onTap: () {
                        context.push(AppRoutesNames.listaProducoes, extra: grades[index].id);
                      },
                      child: ItemGradeWidget(
                          grade: grades[index]
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
