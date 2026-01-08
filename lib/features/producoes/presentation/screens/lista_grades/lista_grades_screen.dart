import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/constants/app_dimens.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/widgets/item_grade_widget.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';

class ListaGradesScreen extends ConsumerStatefulWidget {
  const ListaGradesScreen({super.key});

  @override
  ConsumerState<ListaGradesScreen> createState() => _ListaGradesScreenState();
}

class _ListaGradesScreenState extends ConsumerState<ListaGradesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Lista de Grades')),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.all(AppDimens.spacingG),
        child: Column(
          children: [
            ItemGradeWidget(
              produto: 'Itaipava 50L',
              data: 'Data: 01/01/2026',
              grade: 'Grade: 01',
            ),
            SizedBox(height: 8,),
            ItemGradeWidget(
              produto: 'Itaipava 30L',
              data: 'Data: 01/01/2026',
              grade: 'Grade: 01',
            ),
            SizedBox(height: 8,),
            ItemGradeWidget(
              produto: 'Itaipava 15L',
              data: 'Data: 01/01/2026',
              grade: 'Grade: 01',
            ),
            SizedBox(height: 8,),

          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(AppRoutesNames.adicionarGrade);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
