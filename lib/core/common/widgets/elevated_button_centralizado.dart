import 'package:flutter/material.dart';

class ElevatedButtonCentralizado extends StatelessWidget {
  final String texto;
  final VoidCallback clique;

  const ElevatedButtonCentralizado({super.key, required this.texto, required this.clique});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: clique,
        child: Text(texto),
      ),
    );
  }
}
