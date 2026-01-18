import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LinhaFormatada extends ConsumerWidget {
  final String valor;
  final TextStyle? valorStyle;

  const LinhaFormatada({
    super.key,
    required this.valor,
    this.valorStyle,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Text(
          valor,
          style: valorStyle,
        ),
      ],
    );
  }
}