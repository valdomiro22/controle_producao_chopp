import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/utils/string_util.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/entity/anotacao_entity.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/widgets/botao_editar_deletar.dart';

class ItemAnotacaoWidget extends ConsumerStatefulWidget {
  final AnotacaoEntity anotacao;
  
  const ItemAnotacaoWidget({super.key, required this.anotacao,});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ItemAnotacaoWidgetState();
}

class _ItemAnotacaoWidgetState extends ConsumerState<ItemAnotacaoWidget> {

  @override
  Widget build(BuildContext context) {
    final anotacao = widget.anotacao;
    final horario = StringUtil.formatarHoraSincrona(anotacao.horario.toIso8601String());

    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Text(anotacao.codigo),
          const SizedBox(width: 8),
          
          const Spacer(),

          Text(horario),
          const SizedBox(width: 10),

          BotaoEditarDeletar(cor: Colors.red, onPressed: () {}, texto: 'Deletar'),
          const SizedBox(width: 4),

          BotaoEditarDeletar(cor: Colors.blue, onPressed: () {}, texto: 'Editar'),
        ],
      ),
    );
  }
}