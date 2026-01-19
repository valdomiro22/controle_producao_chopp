import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../navigate/app_routes_names.dart';

class SelecionarProducaoWidget extends StatelessWidget {
  const SelecionarProducaoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Selecione uma Produção'),
          const SizedBox(height: 100),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                context.push(AppRoutesNames.listaGrades);
              },
              child: Text('Lista de Produções'),
            ),
          ),
        ],
      ),
    );
  }
}
