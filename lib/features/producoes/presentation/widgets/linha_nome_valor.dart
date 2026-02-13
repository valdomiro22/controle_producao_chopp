import 'package:flutter/material.dart';

class LinhaNomeValor extends StatelessWidget {
  final String texto;
  final String? quantidade;
  final Color corDeFundo;
  final Color? corTexto;
  final Color? corValor;

  const LinhaNomeValor({
    super.key,
    required this.texto,
    required this.quantidade,
    required this.corDeFundo,
    this.corTexto,
    this.corValor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        decoration: BoxDecoration(
          color: corDeFundo,
          borderRadius: BorderRadius.circular(5)
        ),
        child: Row(
          children: [
            Text(
              '$texto: ',
              style: TextStyle(fontSize: 18, color: corTexto ?? Colors.black),
            ),
            Text(
              quantidade ?? '-1',
              style: TextStyle(fontSize: 20, color: corValor ?? Colors.deepPurple, fontWeight: FontWeight.w500),
            ),
          ],
        ),
    );
  }
}
