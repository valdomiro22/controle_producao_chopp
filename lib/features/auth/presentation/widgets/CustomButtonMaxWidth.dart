import 'package:flutter/material.dart';

class Custombuttonmaxwidth extends StatelessWidget {
  final String texto;
  final VoidCallback clique;
  final bool isMaxWidth;

  const Custombuttonmaxwidth({
    super.key,
    required this.texto,
    required this.clique,
    this.isMaxWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: isMaxWidth ? double.infinity : null,
        height: 50,
        child: ElevatedButton(onPressed: clique, child: Text(texto)),
      ),
    );
  }
}
