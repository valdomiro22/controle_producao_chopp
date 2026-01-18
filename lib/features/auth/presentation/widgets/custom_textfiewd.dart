
import 'package:flutter/material.dart';

class CustomTextfiewd extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String label;
  final bool ocultar;
  final IconData icone;
  final TextInputType inputType;
  final FormFieldValidator<String?> validador;

  const CustomTextfiewd({
    super.key,
    required this.controller,
    required this.hint,
    required this.label,
    required this.icone,
    required this.inputType,
    required this.validador,
    this.ocultar = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      decoration: InputDecoration(
          prefixIcon: Icon(icone),
          hintText: hint,
          labelText: label,
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 2, color: Colors.deepPurple
              ),
              borderRadius: BorderRadius.circular(8)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 2, color: Colors.deepPurple
              ),
              borderRadius: BorderRadius.circular(8)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 3, color: Colors.deepPurple
              ),
              borderRadius: BorderRadius.circular(8)
          ),
      ),
      validator: validador,
      obscureText: ocultar,
    );
  }
}
