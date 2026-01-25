import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/login/login_notifier.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/common/widgets/elevated_button_centralizado.dart';
import '../../../../../core/constants/app_dimens.dart';
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
    final state = ref.watch(loginProvider);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(AppDimens.spacingG),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Text(
                AppStrings.login,
                style: TextStyle(fontSize: AppDimens.textXG),
              ),
              SizedBox(height: AppDimens.spacingXG),
              CustomTextfiewd(
                controller: _emailController,
                hint: AppStrings.exemploEmail,
                label: AppStrings.email,
                inputType: TextInputType.emailAddress,
                icone: Icons.email,
              ),
              SizedBox(height: AppDimens.spacingG),

              CustomTextfiewd(
                controller: _senhaController,
                hint: AppStrings.exemploSenha,
                label: AppStrings.senha,
                inputType: TextInputType.visiblePassword,
                icone: Icons.lock,
              ),


              // // if (state.err)
              //   Text(state.erroForm?.message ?? '' , style: TextStyle(color: Colors.red)),

              Align(
                alignment: AlignmentGeometry.topRight,
                child: TextButton(
                  onPressed: () {
                    context.push(AppRoutesNames.recuperarSenha);
                  },
                  child: Text('Recuperar senha'),
                ),
              ),
              SizedBox(height: AppDimens.spacingG),

              if (state.isCarregando)
                Center(
                  child: CircularProgressIndicator(),
                ),
                SizedBox(height: AppDimens.spacingG),


              ElevatedButtonCentralizado(
                clique: () {
                  final email = _emailController.text.trim();
                  final senha = _senhaController.text;
                  ref.read(loginProvider.notifier).logar(email: email, senha: senha);
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
                        context.push(AppRoutesNames.cadastro);
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
