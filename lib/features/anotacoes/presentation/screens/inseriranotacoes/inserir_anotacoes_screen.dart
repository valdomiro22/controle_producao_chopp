import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/enums/tipo_codigo.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/screens/inseriranotacoes/adicionar_anotacao_notifier.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/screens/inseriranotacoes/buscar_anotacoes_notifier.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/screens/inseriranotacoes/buscar_anotacoes_state.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/widgets/cabecalho_contador_anotacoes.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/widgets/item_anotacao_widget.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/home/buscar_producao_notifier.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../producoes/presentation/screens/lista_producoes/lista_producoes_notifier.dart';

class InserirAnotacoesScreen extends ConsumerStatefulWidget {
  final String gradeId;
  final String producaoId;
  final ProducaoEntity producao;

  const InserirAnotacoesScreen({super.key, required this.gradeId, required this.producaoId, required this.producao,});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InserirAnotacoesScreenState();
}

class _InserirAnotacoesScreenState extends ConsumerState<InserirAnotacoesScreen> {
  // List<AnotacaoEntity> lista = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(buscarAnotacoesProvider.notifier)
          .buscarAll(gradeId: widget.gradeId, producaoId: widget.producaoId);
    });
  }

  void _atualizarProducao(String gId, String pId) {
    final producao = ref.read(buscarProducaoProvider.notifier).buscar(gradeId: gId, producaoId: pId);
    // final qtProduzida = producao.
  }

  @override
  Widget build(BuildContext context) {
    final formState = ref.watch(adicionarAnotacaoProvider);
    final formNotifier = ref.read(adicionarAnotacaoProvider.notifier);
    final buscarState = ref.watch(buscarAnotacoesProvider);
    final buscarNotifier = ref.read(buscarAnotacoesProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text('Anotações')),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            CabecalhoContadorAnotacoes(qt: buscarNotifier.quantidadeAnotacoes),
            const SizedBox(height: 8),
            Expanded(
              child: buscarState.when(
                carregando: () => Center(child: CircularProgressIndicator()),
                erro: (failure) => Center(child: Text(failure.message)),
                sucessoComDados: (lista) {
                  return ListView.builder(
                    itemCount: lista.length,
                    itemBuilder: (context, index) {
                      return ItemAnotacaoWidget(anotacao: lista[index]);
                    },
                  );
                },
                inicial: () => Container(),
                sucesso: () => Container(),
              ),
            ),

            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              // height: 100,
              decoration: BoxDecoration(
                // color: Colors.greenAccent
              ),
              child: SafeArea(
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
                                      onPressed: () async {
                                        final gradeId = widget.gradeId;
                                        final producaoId = widget.producaoId;

                                        final codigo = docigoController.text;
                                        formNotifier.adicionar(
                                          gradeId: gradeId,
                                          producaoId: producaoId,
                                          codigo: codigo,
                                          tipoCodigo: TipoCodigo.anotacao,
                                        );

                                        ref.read(buscarAnotacoesProvider.notifier).buscarAll(
                                            gradeId: gradeId,
                                            producaoId: producaoId
                                        );

                                        // Quantidades na produção
                                        final qtProduzida = widget.producao.quantidadeProduzida + 1;
                                        final producaoAtualizada = widget.producao.copyWith(quantidadeProduzida: qtProduzida);

                                        await ref.read(listaProducoesProvider.notifier).atualizarProducao(
                                          gradeId: gradeId,
                                          producaoId: producaoId,
                                          producao:  producaoAtualizada,
                                        );
                                        ref.read(buscarProducaoProvider.notifier).atualizarEstadoLocal(producaoAtualizada);

                                        // 3. Atualiza o card específico
                                        // ref.invalidate(buscarQtHorariaProvider());

                                        if (context.mounted) context.pop();
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
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.blueStrong
                      ),
                      child: Icon(Icons.edit, size: 40),
                    ),
                    SizedBox(width: 24),

                    // QR Code
                    ElevatedButton(
                      onPressed: () {
                        final gradeId = widget.gradeId;
                        final producaoId = widget.producaoId;

                        formNotifier.lerQRCode(gradeId: gradeId, producaoId: producaoId);
                        ref.read(buscarAnotacoesProvider.notifier).buscarAll(
                            gradeId: gradeId,
                            producaoId: producaoId
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.blueStrong
                      ),
                      child: Icon(Icons.qr_code, size: 40),
                    ),
                    SizedBox(width: 24),
                    // SizedBox(width: 20),

                    // Código be barras
                    ElevatedButton(
                      onPressed: () {
                        final gradeId = widget.gradeId;
                        final producaoId = widget.producaoId;

                        formNotifier.lerCodigoBarras(gradeId: gradeId, producaoId: producaoId);
                        ref.read(buscarAnotacoesProvider.notifier).buscarAll(
                            gradeId: gradeId,
                            producaoId: producaoId
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.blueStrong
                      ),
                      child: Icon(MdiIcons.barcode, size: 40),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
