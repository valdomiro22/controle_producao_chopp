import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/constants/app_dimens.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/lista_grades/lista_grades_notifier.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/string_util.dart';
import '../../widgets/item_grade_widget.dart';

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
      ref.read(listaGradesNotifierProvider.notifier).listarGrades();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(listaGradesNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Lista de Grades')),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.all(AppDimens.spacingG),
        child: RefreshIndicator(
          onRefresh: () async {
            await ref.read(listaGradesNotifierProvider.notifier).listarGrades();
          },
          child: Builder(
            builder: (context) {
              if (state.isCarregando) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state.isErro) {
                return Center(
                  child: Text(
                    'Erro: ${state.erro?.message ?? 'Tente novamente'}',
                    style: const TextStyle(color: Colors.red),
                  ),
                );
              }

              final lista = state.dados ?? [];

              if (lista.isEmpty) {
                return SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: const Center(child: Text('Nenhuma grade cadastrada ainda')),
                  ),
                );
              }

              // ← Adicione isso aqui (caso com itens na lista)
              return ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: lista.length,
                itemBuilder: (_, index) {
                  final numeroGrade = lista[index].numeroGrade.toString();
                  final data = StringUtil.formatarData(lista[index].data.toIso8601String()) ?? '';

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: ItemGradeWidget(
                      grade: numeroGrade,
                      data: data,
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(AppRoutesNames.adicionarGrade),
        child: const Icon(Icons.add),
      ),
    );
  }
}
