import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/constants/app_dimens.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/recuperar_senha/recuperar_senha_notifier.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/widgets/custom_textfiewd.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_strings.dart';

class RecuperarSenhaScreen extends ConsumerStatefulWidget {
  const RecuperarSenhaScreen({super.key});

  @override
  ConsumerState<RecuperarSenhaScreen> createState() => _RecuperarSenhaScreenState();
}

class _RecuperarSenhaScreenState extends ConsumerState<RecuperarSenhaScreen> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(recuperarSenhaNotifierProvider);

    ref.listen(recuperarSenhaNotifierProvider, (previous, next) {
      if (previous?.isCarregando == true && next.isSucesso) {
        _emailController.clear();
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recuperar Senha',
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppDimens.spacingG),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: AppDimens.spacingXG),

            Icon(Icons.lock_reset, size: 100, color: Colors.deepPurpleAccent,),
            const SizedBox(height: AppDimens.spacingXG),

            Text(AppStrings.recuperarSenhaInfo),
            const SizedBox(height: AppDimens.spacingG),
            CustomTextfiewd(
              controller: _emailController,
              label: 'E-mail',
              icone: Icons.email_outlined,
              hint: AppStrings.exemploEmail,
              inputType: TextInputType.emailAddress,
              validador: (val) => val != null && val.contains('@') ? null : 'E-mail inválido',
            ),
            const SizedBox(height: AppDimens.spacingG),

            if (state.isCarregando)
              Center(
                child: CircularProgressIndicator(),
              ),
              const SizedBox(height: AppDimens.spacingG),

            ElevatedButton(
              onPressed: () {
                final email = _emailController.text.trim();
                ref.read(recuperarSenhaNotifierProvider.notifier).recuperarSenha(email);
              },
              child: Text('Enviar'),
            )
          ],
        ),
      )
    );
  }
}
