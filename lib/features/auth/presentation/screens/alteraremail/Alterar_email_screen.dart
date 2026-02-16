import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/common/widgets/mensagem_erro_widget.dart';
import 'package:gestao_producao_chopp/core/constants/app_strings.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alteraremail/form_alterar_email_state.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/configuracoes/buscar_usuario_notifier.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/configuracoes/buscar_usuario_state.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/widgets/custom_textfiewd.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_dimens.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../domain/entity/usuario_entity.dart';
import 'alterar_email_notifier.dart';

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
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final usuarioState = ref.watch(buscarUsuarioProvider);
    final state = ref.watch(alterarEmailProvider);
    final notifier = ref.watch(alterarEmailProvider.notifier);

    ref.listen<FormAlterarEmailState>(alterarEmailProvider, (previous, next) {

      if (previous?.isLoading == true && next.isSucess == true) {
        _emailController.clear();
        _senhaController.clear();
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.alterarEmail),
      ),
      body: usuarioState.when(
          sucessoComDados: (UsuarioEntity usuario) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(AppDimens.spacingG),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      AppStrings.alterarEmailInfo,
                      style: TextStyle(color: AppColors.secondaryText),
                    ),
                    const SizedBox(height: AppDimens.spacingXG),

                    CustomTextfiewd(
                      controller: _emailController,
                      label: 'Novo E-mail',
                      icone: Icons.email_outlined,
                      hint: AppStrings.exemploEmail,
                      inputType: TextInputType.emailAddress,
                      onChanged: (e) => notifier.inserirEmail(e),
                    ),
                    if (state.erroEmail != null) MensagemErroWidget(texto: state.erroEmail.toString()),
                    const SizedBox(height: AppDimens.spacingMM),

                    CustomTextfiewd(
                      controller: _senhaController,
                      label: 'Senha Atual',
                      icone: Icons.lock_outline,
                      hint: AppStrings.exemploSenha,
                      inputType: TextInputType.visiblePassword,
                      ocultar: true,
                      onChanged: (s) => notifier.inserirSenha(s),
                    ),
                    if (state.erroSenha != null) MensagemErroWidget(texto: state.erroSenha.toString()),
                    const SizedBox(height: AppDimens.spacingG),

                    if (state.isLoading)
                      Center(
                        child: CircularProgressIndicator(),
                      ),

                    const SizedBox(height: AppDimens.spacingG),

                    ElevatedButton(
                      onPressed: () {
                        final email = _emailController.text.trim();
                        final senha = _senhaController.text;
                        final id = usuario.id!;

                        ref.read(alterarEmailProvider.notifier).alterarEmail(
                          newEmail: email,
                          password: senha,
                          usuario: usuario,
                          usuarioId: id
                        );

                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: const Text(AppStrings.salvarAlteracoes),
                    ),
                  ],
                ),
              ),
            );
          },
          inicial: () => SizedBox(),
          carregando: () => Center(child: CircularProgressIndicator(),),
          sucesso: () => SizedBox(),
          erro: (failure) => Center(child: Text(failure.message),)
      ),
    );
  }
}