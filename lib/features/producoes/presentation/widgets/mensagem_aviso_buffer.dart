import 'package:flutter/material.dart';

class MensagemAvisoBuffer extends StatelessWidget {
  final double? vlNecessario;

  const MensagemAvisoBuffer({super.key, required this.vlNecessario});

  @override
  Widget build(BuildContext context) {
    if (vlNecessario == null) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        decoration: BoxDecoration(
          // color: Colors.red,
          border: Border.all(
            color: Color(0xff9e9e9e),
            // color: Colors.green,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          'Selecione um produto e tipo',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      );
    } else if (vlNecessario! <= 27.0) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        decoration: BoxDecoration(
          // color: Colors.red,
          border: Border.all(
            color: Color(0xffcb0000),
            // color: Colors.green,
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
          // color: Colors.red,
          border: Border.all(
            color: Color(0xff00b000),
            // color: Colors.green,
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
