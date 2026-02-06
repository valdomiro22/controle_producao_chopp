import 'package:flutter/material.dart';

class MensagemErroWidget extends StatelessWidget {
  final String texto;
  const MensagemErroWidget({super.key, required this.texto,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Text(
        texto,
        style: TextStyle(fontSize: 12, color: Colors.red),
      ),
    );
  }
}
