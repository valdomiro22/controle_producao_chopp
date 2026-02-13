import 'package:flutter/material.dart';

class MensagemAvisoBuffer extends StatelessWidget {
  final double? vlNecessario;
  final int? vlMaximoTanque;

  const MensagemAvisoBuffer({super.key, required this.vlNecessario, this.vlMaximoTanque,});

  @override
  Widget build(BuildContext context) {
    final corVermelha = Color(0xffcb0000);
    final vlTanque = vlMaximoTanque ?? 0.0;
    final isVolumeOk = vlNecessario != null ? vlNecessario! <= vlTanque : false;
    
    if (vlNecessario == null) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xff9e9e9e),
            width: 4,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          'Selecione um produto e tipo',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      );
    } else if (isVolumeOk) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(
            color: corVermelha,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          'Verifique o nível do Buffer',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xff00b000),
            width: 4,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          'Nível do Buffer OK',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      );
    }
  }
}
