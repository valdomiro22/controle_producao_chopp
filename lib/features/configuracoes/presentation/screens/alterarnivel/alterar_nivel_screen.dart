import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/constants/app_dimens.dart';
import 'package:gestao_producao_chopp/core/theme/app_colors.dart';
import 'package:gestao_producao_chopp/features/configuracoes/presentation/screens/alterarnivel/alterar_nivel_notifier.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/widgets/linha_nome_valor.dart';

class AlterarNivelScreen extends ConsumerStatefulWidget {
  const AlterarNivelScreen({super.key});

  @override
  ConsumerState<AlterarNivelScreen> createState() => _AlterarNivelScreenState();
}

class _AlterarNivelScreenState extends ConsumerState<AlterarNivelScreen> {
  final _nivelController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nivelController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(alterarNivelProvider);
    final notifier = ref.watch(alterarNivelProvider.notifier);

    ref.listen(alterarNivelProvider, (previous, next) {
      if (next.isSucess) {
        notifier.limpar();
        _nivelController.clear();
      }
    });

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
              onChanged: (v) => notifier.inserirNivel(v),
            ),
            if (state.erroNivel != null)
              Text(
                state.erroNivel ?? '',
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),

            if (state.isLoading == true)
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Center(child: CircularProgressIndicator()),
              ),

            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Clicado'),
                    duration: Duration(seconds: 2),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                notifier.alterar();
              },
              child: Text('Salva'),
            ),
            const SizedBox(height: 16),

            Card(
              color: Colors.white70,
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Ultima alteração',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Divider(color: AppColors.secondaryText),
                    Text('Data: 12/02/2026'),
                    const SizedBox(height: 4),
                    Text('Horario: 10:54'),
                    const SizedBox(height: 4),
                    Text('Alterado por: Valdomiro'),
                    const SizedBox(height: 4),
                    Text('Nível: 50 hl'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
