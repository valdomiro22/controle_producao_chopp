import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/constants/app_dimens.dart';
import 'package:gestao_producao_chopp/core/constants/app_strings.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../widgets/custom_textfiewd.dart';
import 'deletar_conta_notifier.dart';

class DeletarContaScreen extends ConsumerStatefulWidget {
  const DeletarContaScreen({super.key});

  @override
  ConsumerState<DeletarContaScreen> createState() => _DeletarConstaScreenState();
}

class _DeletarConstaScreenState extends ConsumerState<DeletarContaScreen> {
  // final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _senhaController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(deletarContaProvider);

    ref.listen(deletarContaProvider, (previous, next) {
      if (previous?.isCarregando == true && next.isSucesso) {
        _emailController.clear();
        _senhaController.clear();
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Deletar Conta',
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppDimens.spacingG),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                AppStrings.deletarContaInfo,
                style: TextStyle(color: AppColors.secondaryText),
              ),
              const SizedBox(height: AppDimens.spacingXG),

              CustomTextfiewd(
                controller: _emailController,
                label: 'E-mail',
                icone: Icons.email_outlined,
                hint: AppStrings.exemploEmail,
                inputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: AppDimens.spacingMM),

              CustomTextfiewd(
                controller: _senhaController,
                label: 'Senha',
                icone: Icons.lock_outline,
                hint: AppStrings.exemploSenha,
                inputType: TextInputType.visiblePassword,
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

              if (state.carregando)
                Center(
                  child: CircularProgressIndicator(),
                ),

              const SizedBox(height: AppDimens.spacingG),

              ElevatedButton(
                onPressed: () {
                  final email = _emailController.text.trim();
                  final senha = _senhaController.text;

                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Row(
                          children: [
                            Icon(Icons.warning, color: AppColors.primaryRed,),
                            SizedBox(width: 4,),
                            Text(
                              'Alerta!',
                              style: TextStyle(color: AppColors.primaryDarkText),
                            )
                          ],
                        ),
                        content: Text(
                          'Está ação não podera ser desfeita. Você realmente deseja excluir a sua conta?',
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.greenAccent,
                            ),
                            child: Text(
                              'Cancelar',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              ref.read(deletarContaProvider.notifier).deletarConta(
                                  email: email,
                                  currentPassword: senha
                              );
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Deletar',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      );
                    },
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
      )
    );
  }
}
