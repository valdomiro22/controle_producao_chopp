import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/providers/auth_state.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/cadastro/cadastro_notifier.dart';

import '../../../../../core/common/widgets/elevated_button_centralizado.dart';
import '../../../../../core/constants/app_dimmens.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../widgets/custom_textfiewd.dart';

class CadastroScreen extends ConsumerStatefulWidget {
  const CadastroScreen({super.key});

  @override
  ConsumerState<CadastroScreen> createState() => _CadastroScreenState();
}

class _CadastroScreenState extends ConsumerState<CadastroScreen> {
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
    final authState = ref.watch(cadastroNotifierProvider);

    ref.listen<AuthState>(cadastroNotifierProvider, (previous, next) {

      if (previous?.isCarregando == true && next.isSucesso) {
        _emailController.clear();
        _senhaController.clear();
      }
    });

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(AppDimmens.spacingG),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Text(AppStrings.cadastro, style: TextStyle(fontSize: AppDimmens.textXG)),
              SizedBox(height: AppDimmens.spacingXG),
              CustomTextfiewd(
                controller: _emailController,
                hint: AppStrings.exemploEmail,
                label: AppStrings.email,
                inputType: TextInputType.emailAddress,
                icone: Icons.email,
                validador: (value) => value!.isEmpty ? 'Digite o email' : null,
              ),
              SizedBox(height: AppDimmens.spacingG),
              CustomTextfiewd(
                controller: _senhaController,
                hint: AppStrings.exemploSenha,
                label: AppStrings.senha,
                inputType: TextInputType.visiblePassword,
                icone: Icons.lock,
                validador: (value) => value!.isEmpty ? 'Digite a senha' : null,
              ),
              Text('Erro', style: TextStyle(color: Colors.red)),
              SizedBox(height: AppDimmens.spacingG),

              if (authState.isCarregando)
                Center(
                  child: CircularProgressIndicator(),
                ),
              
              ElevatedButtonCentralizado(
                clique: () {
                  final email = _emailController.text.trim();
                  final senha = _senhaController.text;

                  ref.read(cadastroNotifierProvider.notifier).cadastrar(
                    email: email,
                    password: senha,
                  );
                },
                texto: AppStrings.cadastrar,
              ),
              SizedBox(height: 50),
              Align(
                alignment: AlignmentGeometry.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ainda não possui uma conta?',
                      // style: TextStyle(color: Colors.red),
                    ),
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Cadastrar'),
                            duration: Duration(seconds: 2),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      },
                      child: Text(AppStrings.logar),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
