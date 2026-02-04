import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/utils/string_util.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/entity/anotacao_entity.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/screens/inseriranotacoes/buscar_anotacoes_notifier.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/widgets/botao_editar_deletar.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_colors.dart';

class ItemAnotacaoWidget extends ConsumerStatefulWidget {
  final AnotacaoEntity anotacao;

  const ItemAnotacaoWidget({super.key, required this.anotacao});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ItemAnotacaoWidgetState();
}

class _ItemAnotacaoWidgetState extends ConsumerState<ItemAnotacaoWidget> {
  @override
  Widget build(BuildContext context) {
    final buscarState = ref.watch(buscarAnotacoesProvider);
    final buscarNotifier = ref.read(buscarAnotacoesProvider.notifier);

    final anotacao = widget.anotacao;
    final horario = StringUtil.formatarHoraSincrona(anotacao.horario.toIso8601String());

    return Container(
      margin: EdgeInsetsGeometry.only(bottom: 4),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(4)
      ),
      child: Row(
        children: [
          Text(anotacao.codigo),
          const SizedBox(width: 8),

          const Spacer(),

          Text(horario),
          const SizedBox(width: 10),

          BotaoEditarDeletar(
            cor: Colors.red,
            altura: 30,
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Row(
                      children: [
                        Icon(Icons.warning, color: AppColors.primaryRed),
                        SizedBox(width: 16),
                        Text('Alerta!', style: TextStyle(color: AppColors.primaryDarkText)),
                      ],
                    ),
                    content: Text('Quer mesmo deletar?'),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
                        child: Text('Cancelar', style: TextStyle(color: Colors.black)),
                      ),
                      TextButton(
                        onPressed: () async {
                          // await anotacaoVm.deletarAnotacao(anotacao);
                          final gradeId = widget.anotacao.gradeId;
                          final producaoId = widget.anotacao.producaoId;
                          final anotacaoId = widget.anotacao.id;

                          if (anotacaoId != null) {
                            buscarNotifier.deletar(
                                gradeId: gradeId,
                                producaoId: producaoId,
                                anotacaoId: anotacaoId,
                            );
                          }


                          Navigator.of(context).pop();
                        },
                        child: Text('Deletar', style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  );
                },
              );
            },
            texto: 'Deletar',
          ),
          const SizedBox(width: 4),

          BotaoEditarDeletar(
            cor: Colors.blue,
            altura: 30,
            onPressed: () {
              context.push(AppRoutesNames.editarAnotacao, extra: anotacao);
            },
            texto: 'Editar',
          ),
        ],
      ),
    );
  }
}
