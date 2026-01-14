import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/theme/app_colors.dart';
import 'package:gestao_producao_chopp/core/utils/string_util.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';

import '../../domain/entities/grade_entity.dart';
import '../screens/lista_grades/lista_grades_notifier.dart';

class ItemGradeWidget extends ConsumerWidget {
  final GradeEntity grade;

  const ItemGradeWidget({
    super.key,
    required this.grade,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = StringUtil.formatarData(grade.data.toIso8601String());
    return Card(
      color: AppColors.lightSurface,
      child: Padding(
        padding: EdgeInsets.only(
          left: 12, top: 10, right: 12, bottom: 2
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Data: ',
                  style: TextStyle(
                    fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  data ?? '',
                  style: TextStyle(fontSize: 16, color: Colors.black,),
                ),

                Spacer(),
                Text(
                  'Grade: ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black,),
                ),
                Text(
                  grade.numeroGrade.toString(),
                  style: TextStyle(fontSize: 16, color: Colors.black,),
                ),
              ],
            ),

            SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.info, color: Colors.grey, size: 30,),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Data: $data',
                                  style: TextStyle(fontSize: 14),
                                ),
                                Divider(),
                                Text(
                                  'Grade: ${grade.numeroGrade}',
                                  style: TextStyle(fontSize: 14),
                                ),
                                Divider(),
                                Text(
                                  'Quantidade Barris: ${grade.totalBarrisDaGrade ?? ''}',
                                  style: TextStyle(fontSize: 14),
                                ),
                                Divider(),
                                Text(
                                  'Volume hl: ${grade.volumeTotalDaGrade ?? ''}',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Fecha o diálogo
                              },
                              child: const Text('Cancelar'),
                            ),
                            TextButton(
                              onPressed: () {
                                // Adicione sua lógica aqui para a ação principal
                                Navigator.of(context).pop(); // Fecha o diálogo após a ação
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),

                IconButton(
                  icon: Icon(Icons.delete, color: Colors.red, size: 30,),
                  onPressed: () {
                    debugPrint('Deletar grade');
                    if (grade.id != null) {
                      ref.read(listaGradesNotifierProvider.notifier).deletarGrade(grade.id!);
                    }
                  },
                ),

                IconButton(
                  icon: Icon(Icons.edit, color: Colors.blue, size: 30,),
                  onPressed: () {
                    context.push(AppRoutesNames.editarGrade, extra: grade);
                  },
                ),

                IconButton(
                  icon: Icon(Icons.share, color: Colors.purple, size: 30,),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Share'),
                        duration: Duration(seconds: 2),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}

@Preview(name: 'Card Produção')
Widget myPreview() {
  return ItemGradeWidget(
    grade: GradeEntity(numeroGrade: 3, data: DateTime.now())
  );
}