import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/constants/app_dimens.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/widgets/linha_nome_valor.dart';

class AlterarNivelScreen extends ConsumerStatefulWidget {
  const AlterarNivelScreen({super.key});

  @override
  ConsumerState<AlterarNivelScreen> createState() => _AlterarNivelScreenState();
}

class _AlterarNivelScreenState extends ConsumerState<AlterarNivelScreen> {
    final _nivelController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nível do Buffer')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppDimens.paddingPagina),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Nível do Buffer'),
            TextField(
              controller: _nivelController,
              decoration: InputDecoration(hintText: 'Ex: 40'),
            ),
            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {

              },
              child: Text('Salva'),
            ),
            const SizedBox(height: 16),

            Card(
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Ultima alteração: 12/02/2026'),
                  const SizedBox(height: 4),
                  Text('Alterado por: Valdomiro'),
                ],
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}