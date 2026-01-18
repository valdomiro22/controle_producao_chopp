import 'package:flutter/material.dart';

class LinhaChaveValor extends StatelessWidget {
  final String chave;
  final TextStyle? chaveStyle;
  final String valor;
  final TextStyle? valorStyle;

  const LinhaChaveValor({
    super.key,
    required this.chave,
    this.chaveStyle,
    required this.valor,
    this.valorStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$chave:',
          style: chaveStyle,
        ),
        const SizedBox(width: 4),
        Text(
          valor,
          style: valorStyle,
        ),
      ],
    );
  }
}
