import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/theme/app_colors.dart';
import 'package:gestao_producao_chopp/core/utils/producao_util.dart';
import 'package:gestao_producao_chopp/core/utils/produto_barril_helper.dart';
import 'package:gestao_producao_chopp/features/configuracoes/presentation/screens/alterarnivel/buscar_configuracao.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';

import '../../../grades/presentation/widgets/mensagem_aviso_buffer.dart';

class ControleNivelBufferWidget extends ConsumerStatefulWidget {
  final ProducaoEntity producaoRecebida;

  const ControleNivelBufferWidget({super.key, required this.producaoRecebida});

  @override
  ConsumerState<ControleNivelBufferWidget> createState() => _ControleNivelBufferWidgetState();
}

class _ControleNivelBufferWidgetState extends ConsumerState<ControleNivelBufferWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(buscarConfiguracaoProvider.notifier).busca();
    });
  }

  @override
  Widget build(BuildContext context) {
    final corFundo = Colors.grey[200];
    final producao = widget.producaoRecebida;
    final confState = ref.watch(buscarConfiguracaoProvider);
    final produto = ref.produtoPorId(producao.produtoId);
    final barril = ref.barrilPorId(producao.tipoBarrilId);

    final volumeNecessario = ProducaoUtil.calcularVolumeNecessario(
      producao.quantidadePendente,
      barril!.volume,
    );

    return confState.when(
      inicial: () => const SizedBox(),
      loading: () => const Center(child: CircularProgressIndicator()),
      sucesso: () => const SizedBox(),
      erro: (e) => Center(child: Text(e.message)),
      sucessoComDados: (config) {
        final nivelOk = volumeNecessario <= config!.nivelBuffer;

        return Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
              decoration: BoxDecoration(color: corFundo, borderRadius: BorderRadius.circular(8)),
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Volume do Barril: ',
                        style: TextStyle(color: AppColors.secondaryText, fontSize: 16),
                      ),
                      Text(
                        '${barril.volume} L',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.blueStrong,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Volume necessarios: ',
                        style: TextStyle(color: AppColors.secondaryText, fontSize: 16),
                      ),
                      Text(
                        '$volumeNecessario hl',
                        style: TextStyle(
                          fontSize: 16,
                          color: !nivelOk ? AppColors.blueStrong : AppColors.red900,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  MensagemAvisoBuffer(
                    vlNecessario: volumeNecessario,
                    vlMaximoTanque: config.nivelBuffer,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
