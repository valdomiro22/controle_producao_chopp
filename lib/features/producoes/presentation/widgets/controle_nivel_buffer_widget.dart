import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';

import '../../../grades/presentation/widgets/mensagem_aviso_buffer.dart';

class ControleNivelBufferWidget extends ConsumerWidget {
  final ProducaoEntity producao;

  const ControleNivelBufferWidget({
    super.key,
    required this.producao,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final corVermelha = Color(0xffcb0000);
    final corVede = Color(0xff00b000);
    final isVolumeOk = producao.volumeNecessarioHl < 40.0 ? false : true;

    return Column(
      children: [
        // Text('Controle de nível do Buffer', style: TextStyle(fontSize: 18)),
        // SizedBox(height: 4),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
          decoration: BoxDecoration(
            color: isVolumeOk ? corVede.withAlpha(30) : corVermelha.withAlpha(30),
            borderRadius: BorderRadius.circular(8),
          ),
          width: double.infinity,
          // color: Colors.red,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Volume do Barril: ${producao.tipoBarril.label}',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Volume necessarios: ',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text('${producao.volumeNecessarioHl.toString()} hl', style: TextStyle(fontSize: 16)),
                ],
              ),
              SizedBox(height: 8),
              MensagemAvisoBuffer(vlNecessario: producao.volumeNecessarioHl),
            ],
          ),
        ),
      ],
    );
  }
}