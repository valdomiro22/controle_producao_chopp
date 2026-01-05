import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/constants/app_dimens.dart';
import 'package:gestao_producao_chopp/core/constants/app_strings.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alterar_senha/alterar_senha_notifier.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../widgets/custom_textfiewd.dart';

class AlterarSenhaScreen extends ConsumerStatefulWidget {
  const AlterarSenhaScreen({super.key});

  @override
  ConsumerState<AlterarSenhaScreen> createState() => _AlterarSenhaScreenState();
}

class _AlterarSenhaScreenState extends ConsumerState<AlterarSenhaScreen> {
  final _formKey = GlobalKey<FormState>();
  final _senhaController = TextEditingController();
  final _novaSenhaController = TextEditingController();
  final _confirmeNovaSenhaController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _senhaController.dispose();
    _novaSenhaController.dispose();
    _confirmeNovaSenhaController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(alterarSenhaNotifierProvider);

    ref.listen(alterarSenhaNotifierProvider, (previous, next) {
      if (previous?.isCarregando == true && next.isSucesso) {
        _senhaController.clear();
        _novaSenhaController.clear();
        _confirmeNovaSenhaController.clear();
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alterar Senha',
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppDimens.spacingG),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                AppStrings.alterarSenhaInfo,
                style: TextStyle(color: AppColors.secondaryText),
              ),
              const SizedBox(height: AppDimens.spacingXG),

              CustomTextfiewd(
                controller: _senhaController,
                label: 'Senha Atual',
                icone: Icons.lock_outline,
                hint: AppStrings.exemploSenha,
                inputType: TextInputType.visiblePassword,
                validador: (val) => val != null && val.contains('@') ? null : 'E-mail inválido',
                ocultar: true,
              ),
              const SizedBox(height: AppDimens.spacingMM),

              CustomTextfiewd(
                controller: _novaSenhaController,
                label: 'Nova senha',
                icone: Icons.lock_outline,
                hint: AppStrings.exemploSenha,
                inputType: TextInputType.visiblePassword,
                validador: (val) => val != null && val.contains('@') ? null : 'E-mail inválido',
                ocultar: true,
              ),
              const SizedBox(height: AppDimens.spacingMM),

              CustomTextfiewd(
                controller: _confirmeNovaSenhaController,
                label: 'Confirme a nova senha',
                icone: Icons.lock_outline,
                hint: AppStrings.exemploSenha,
                inputType: TextInputType.visiblePassword,
                validador: (val) => val != null ? null : 'E-mail inválido',
                ocultar: true,
              ),

              if (state.isErro)
                Text(
                  '${state.erro?.message}',
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              const SizedBox(height: AppDimens.spacingXG),

              if (state.isCarregando)
                Center(
                  child: CircularProgressIndicator(),
                ),

              const SizedBox(height: AppDimens.spacingG),

              ElevatedButton(
                onPressed: () {
                  final senha = _senhaController.text;
                  final novaSenha = _novaSenhaController.text;
                  final confirmarNova = _confirmeNovaSenhaController.text;

                  ref.read(alterarSenhaNotifierProvider.notifier).alterarSenha(
                    atual: senha,
                    nova: novaSenha,
                    confirmacao: confirmarNova,
                  );
                },
                child: Text(AppStrings.salvarAlteracoes),
              ),
            ],
          )
        ),
      )
    );
  }
}
