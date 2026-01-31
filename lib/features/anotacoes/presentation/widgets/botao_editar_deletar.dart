import 'package:flutter/material.dart';

class BotaoEditarDeletar extends StatelessWidget {
  final Color cor;
  final VoidCallback onPressed;
  final String texto;
  final double? largura;
  final double? altura;

  const BotaoEditarDeletar({
    super.key,
    required this.cor,
    required this.onPressed,
    required this.texto,
    this.largura,
    this.altura,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: altura,
        width: largura,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(
            color: cor,
            borderRadius: BorderRadius.circular(5)
        ),
        child: Center(
          child: Text(texto, style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
