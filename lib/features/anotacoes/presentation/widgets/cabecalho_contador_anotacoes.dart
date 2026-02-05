import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class CabecalhoContadorAnotacoes extends StatelessWidget {
  final int qt;

  const CabecalhoContadorAnotacoes({super.key, required this.qt});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.blueStrong,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Text(
              'Anotações feitas',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Spacer(),
            Text(
              'Quantidade: $qt',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
