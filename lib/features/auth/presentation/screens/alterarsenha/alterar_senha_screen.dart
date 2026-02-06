import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/common/widgets/mensagem_erro_widget.dart';
import 'package:gestao_producao_chopp/core/constants/app_dimens.dart';
import 'package:gestao_producao_chopp/core/constants/app_strings.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alterarnome/alterar_nome_notifier.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alterarsenha/alterar_senha_state.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../producoes/presentation/screens/home/home_notifier.dart';
import '../../widgets/custom_textfiewd.dart';
import 'alterar_senha_notifier.dart';

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
    final state = ref.watch(alterarSenhaProvider);
    final notifier = ref.watch(alterarSenhaProvider.notifier);

    ref.listen<AlterarSenhaState>(alterarSenhaProvider, (previous, next) {
      if (previous?.isLoading == true && next.isSucess == true) {
        _senhaController.clear();
        _novaSenhaController.clear();
        _confirmeNovaSenhaController.clear();
        ref.read(homeProvider.notifier).deslogar();
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
                ocultar: true,
                onChanged: (v) => notifier.inserirSenhaAtual(v),
              ),
              if (state.erroSenhaAtual != null)
                MensagemErroWidget(texto: state.erroSenhaAtual.toString()),
              const SizedBox(height: AppDimens.spacingMM),

              CustomTextfiewd(
                controller: _novaSenhaController,
                label: 'Nova senha',
                icone: Icons.lock_outline,
                hint: AppStrings.exemploSenha,
                inputType: TextInputType.visiblePassword,
                ocultar: true,
                onChanged: (v) => notifier.inserirNovaSenha(v),
              ),
              if (state.erroNovaSenha != null)
                MensagemErroWidget(texto: state.erroNovaSenha.toString()),
              const SizedBox(height: AppDimens.spacingMM),

              CustomTextfiewd(
                controller: _confirmeNovaSenhaController,
                label: 'Confirme a nova senha',
                icone: Icons.lock_outline,
                hint: AppStrings.exemploSenha,
                inputType: TextInputType.visiblePassword,
                ocultar: true,
                onChanged: (v) => notifier.inserirConfirmarNovaSenha(v),
              ),
              if (state.erroConfirmarSenha != null)
                MensagemErroWidget(texto: state.erroConfirmarSenha.toString()),
              const SizedBox(height: AppDimens.spacingXG),

              if (state.isLoading)
                Center(
                  child: CircularProgressIndicator(),
                ),

              const SizedBox(height: AppDimens.spacingG),

              ElevatedButton(
                onPressed: () {
                  final senha = _senhaController.text;
                  final novaSenha = _novaSenhaController.text;
                  final confirmarNova = _confirmeNovaSenhaController.text;

                  ref.read(alterarSenhaProvider.notifier).alterarSenha(
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
