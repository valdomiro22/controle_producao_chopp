import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/entity/anotacao_entity.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../domain/enums/tipo_codigo.dart';

class EditarAnotacaoScreen extends ConsumerStatefulWidget {
  final AnotacaoEntity anotacao;

  const EditarAnotacaoScreen({super.key, required this.anotacao});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditarAnotacaoScreenState();
}

class _EditarAnotacaoScreenState extends ConsumerState<EditarAnotacaoScreen> {
  final _codigoController = TextEditingController();
  final _obsController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _codigoController.dispose();
    _obsController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final anotacao = widget.anotacao;

    return Scaffold(
      appBar: AppBar(title: Text('Editar Anotacao')),


      // TODO - falta vincular o usuario para fazer esta verificação
      // body: anotacao!.tipoCodigo.id == TipoCodigo.anotacao.id && anotacao.usuarioId == usuario!.uid


      body: anotacao.tipoCodigo.id == TipoCodigo.anotacao.id
          ? Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Codigo'),
                  SizedBox(height: 4),
                  TextField(
                    keyboardType: TextInputType.text,
                    controller: _codigoController,
                    decoration: InputDecoration(
                      hintText: 'Código...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text('Observação'),
                  SizedBox(height: 4),
                  TextField(
                    keyboardType: TextInputType.multiline,
                    controller: _obsController,
                    maxLines: 5,
                    minLines: 3,
                    decoration: InputDecoration(hintText: 'Observação'),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        // final codigo = _codigoController.text;
                        // final obs = _obsController.text;
                        // final retorno = await anotacaoVm.atualizarAnotacao(
                        //     codigo: codigo,
                        //     obs: obs,
                        //     anotacao: anotacao
                        // );
                        //
                        // await anotacaoVm.atualizarAnotacao(codigo: codigo, obs: obs, anotacao: anotacao);
                        // if (retorno) {
                        //   Navigator.pop(context);
                        // }
                      },
                      child: Text('Atualizar', style: TextStyle(color: AppColors.lightSurface)),
                    ),
                  ),
                ],
              ),
            )
          : Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.multiline,
                    // controller: _observacaoController,
                    maxLines: 5,
                    minLines: 3,
                    decoration: InputDecoration(hintText: 'Observação'),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // anotacaoVm.inserirObservacao(anotacao);
                        Navigator.pop(context);
                      },
                      child: Text('Atualizar', style: TextStyle(color: AppColors.lightSurface)),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
