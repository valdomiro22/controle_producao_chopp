import 'package:flutter/material.dart';

class ItemProducao extends StatelessWidget {
  final String tipo;
  final String programado;
  final String produzido;
  final String pendente;

  const ItemProducao({
    super.key,
    required this.tipo,
    required this.programado,
    required this.produzido,
    required this.pendente,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tipo,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text('Programado: $programado ✅'),
          Text('Produzido: $produzido ❌'),
          Text('Pendente: $pendente ❌'),
        ],
      ),
    );
  }
}
