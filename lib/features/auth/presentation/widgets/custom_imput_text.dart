import 'package:flutter/material.dart';

class CustomImputText extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String label;
  final bool ocultar;
  final IconData icone;
  final TextInputType inputType;
  final ValueChanged<String>? onChanged;

  const CustomImputText({
    super.key,
    required this.controller,
    required this.hint,
    required this.label,
    required this.icone,
    required this.inputType,
    this.ocultar = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: inputType,
      onChanged: onChanged,
      obscureText: ocultar,
      decoration: InputDecoration(prefixIcon: Icon(icone), hintText: hint, labelText: label),
    );
  }
}
