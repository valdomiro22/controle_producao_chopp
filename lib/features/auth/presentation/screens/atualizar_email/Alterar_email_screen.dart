import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/constants/app_strings.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/atualizar_email/alterar_email_notifier.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/widgets/custom_textfiewd.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_dimmens.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../providers/auth_state.dart';

// Usamos ConsumerStatefulWidget pois precisamos de:
// 1. WidgetRef (Riverpod) para chamar o notifier
// 2. State (Flutter) para gerenciar os TextEditingControllers
class AlterarEmailScreen extends ConsumerStatefulWidget {
  const AlterarEmailScreen({super.key});

  @override
  ConsumerState<AlterarEmailScreen> createState() => _AlterarEmailScreenState();
}

class _AlterarEmailScreenState extends ConsumerState<AlterarEmailScreen> {
  // Controladores iniciados aqui são seguros e não se perdem
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(alterarEmailNotifierProvider);

    ref.listen<AuthState>(alterarEmailNotifierProvider, (previous, next) {

      if (previous?.isCarregando == true && next.isSucesso) {
        _emailController.clear();
        _senhaController.clear();
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.alterarEmail),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppDimmens.spacingG),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                AppStrings.alterarEmailInfo,
                style: TextStyle(color: AppColors.secondaryText),
              ),
              const SizedBox(height: AppDimmens.spacingXG),

              CustomTextfiewd(
                controller: _emailController,
                label: 'Novo E-mail',
                icone: Icons.email_outlined,
                hint: AppStrings.exemploEmail,
                inputType: TextInputType.emailAddress,
                validador: (val) => val != null && val.contains('@') ? null : 'E-mail inválido',
              ),
              const SizedBox(height: AppDimmens.spacingMM),

              CustomTextfiewd(
                controller: _senhaController,
                label: 'Senha Atual',
                icone: Icons.lock_outline,
                hint: AppStrings.exemploSenha,
                inputType: TextInputType.visiblePassword,
                validador: (val) => val != null && val.contains('@') ? null : 'E-mail inválido',
                ocultar: true,
              ),

              if (state.isErro)
                Text(
                  '${state.erro?.message}',
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              const SizedBox(height: AppDimmens.spacingXG),

              if (state.isCarregando)
                Center(
                  child: CircularProgressIndicator(),
                ),

              const SizedBox(height: AppDimmens.spacingG),

              ElevatedButton(
                onPressed: () {
                  final email = _emailController.text.trim();
                  final senha = _senhaController.text;

                  ref.read(alterarEmailNotifierProvider.notifier).alterarEmail(
                    newEmail: email,
                    password: senha
                  );
                  
                  debugPrint('Alterar');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(AppStrings.salvarAlteracoes),
              ),
            ],
          ),
        ),
      ),
    );
  }
}