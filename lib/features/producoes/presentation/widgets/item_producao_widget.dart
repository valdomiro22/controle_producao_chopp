import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/common/widgets/linha_texto_valor.dart';
import 'package:gestao_producao_chopp/core/theme/app_colors.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';

class ItemProducaoWidget extends ConsumerWidget {
  final ProducaoEntity producao;

  const ItemProducaoWidget({super.key, required this.producao});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      color: AppColors.lightSurface,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LinhaTextoValor(
                  valor: producao.produto.label,
                  valorStyle: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                LinhaTextoValor(
                  valor: 'Barril de ${producao.tipoBarril.label}',
                  valorStyle: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),

            Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.info, color: Colors.grey, size: 30),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Data: ', style: TextStyle(fontSize: 14)),
                              Divider(),
                              Text(
                                'Grade: ${producao.produto.label}',
                                style: TextStyle(fontSize: 14),
                              ),
                              Divider(),
                              Text(
                                'Quantidade Barris: ${'afsdf' ?? ''}',
                                style: TextStyle(fontSize: 14),
                              ),
                              Divider(),
                              Text('Volume hl: ${'fad' ?? ''}', style: TextStyle(fontSize: 14)),
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
                  icon: Icon(Icons.delete, color: Colors.red, size: 30),
                  onPressed: () {
                    // debugPrint('Deletar grade');
                    // if (grade.id != null) {
                    //   ref.read(listaGradesNotifierProvider.notifier).deletarGrade(grade.id!);
                    // }
                  },
                ),

                IconButton(
                  icon: Icon(Icons.edit, color: Colors.blue, size: 30),
                  onPressed: () {
                    // context.push(AppRoutesNames.editarGrade, extra: grade);
                  },
                ),

                IconButton(
                  icon: Icon(Icons.share, color: Colors.purple, size: 30),
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
            ),
          ],
        ),
      ),
    );
  }
}
