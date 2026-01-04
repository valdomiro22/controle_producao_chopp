import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/common/widgets/elevated_button_centralizado.dart';
import '../../../../../core/constants/app_dimmens.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../widgets/custom_textfiewd.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  // final criarUsuario = ref.watch(criarUsuarioUseCaseProvider);
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(AppDimmens.spacingG),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Text(
                AppStrings.login,
                style: TextStyle(fontSize: AppDimmens.textXG),
              ),
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
              Align(
                alignment: AlignmentGeometry.topRight,
                child: TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Recuperar senha'),
                        duration: Duration(seconds: 2),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  child: Text('Recuperar senha'),
                ),
              ),
              SizedBox(height: AppDimmens.spacingG),
              ElevatedButtonCentralizado(
                clique: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Logar'),
                      duration: Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                texto: 'Logar',
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
                      child: Text('Cadastre-se'),
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
