import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';

class ConfiguracoesAppScreen extends ConsumerWidget {
  const ConfiguracoesAppScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(title: const Text('Configurações')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              color: Colors.white70,
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  Text('Tema escuro'),
                  Spacer(),
                  Switch(value: false, onChanged: (value) {}),
                ],
              ),
            ),
            const SizedBox(height: 8,),

            Container(
              color: Colors.white70,
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  Text('Alterar nivel do Buffer'),
                  Spacer(),
                  IconButton(
                    onPressed: () => context.push(AppRoutesNames.nivelBuffer),
                    icon: Icon(Icons.arrow_forward_outlined),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
