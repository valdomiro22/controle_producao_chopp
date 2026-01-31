import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/screens/inseriranotacoes/adicionar_anotacao_notifier.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/widgets/cabecalho_contador_anotacoes.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../core/theme/app_colors.dart';

class InserirAnotacoesScreen extends ConsumerStatefulWidget {
  const InserirAnotacoesScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InserirAnotacoesScreenState();
}

class _InserirAnotacoesScreenState extends ConsumerState<InserirAnotacoesScreen> {
  @override
  Widget build(BuildContext context) {
    final formState = ref.watch(adicionarAnotacaoProvider);
    final formNotifier = ref.read(adicionarAnotacaoProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text('Anotações')),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            CabecalhoContadorAnotacoes(qt: 40),
            const SizedBox(height: 8),
            Expanded(
              child: Container(decoration: BoxDecoration(color: Colors.brown[200])),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              // height: 100,
              decoration: BoxDecoration(
                // color: Colors.greenAccent
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Digitar codigo
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          final docigoController = TextEditingController();

                          return AlertDialog(
                            title: Column(
                              children: [
                                TextField(
                                  autofocus: true,
                                  controller: docigoController,
                                  decoration: InputDecoration(
                                    labelText: 'Código',
                                    hintText: 'Codigo produto',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: AppColors.inputBorder),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: AppColors.primaryDarkText,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      final codigo = docigoController.text;
                                      formNotifier.adicionar(
                                          gradeId: 'gradeId', producaoId: 'producaoId', codigo: codigo
                                      );
                                      context.pop();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.inputBorder,
                                    ),
                                    child: const Text(
                                      'Adicionar',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Icon(Icons.edit, size: 40),
                  ),
                  SizedBox(width: 24),

                  // QR Code
                  ElevatedButton(
                    onPressed: () {
                      // anotacaoVm.lerQRCode();
                    },
                    child: Icon(Icons.qr_code, size: 40),
                  ),
                  SizedBox(width: 24),
                  // SizedBox(width: 20),

                  // Código be barras
                  ElevatedButton(
                    onPressed: () {
                      // anotacaoVm.lerCodigoBarras();
                    },
                    child: Icon(MdiIcons.barcode, size: 40),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
