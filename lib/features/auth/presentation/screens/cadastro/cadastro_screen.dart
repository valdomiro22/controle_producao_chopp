import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/providers/auth_state.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/cadastro/cadastro_notifier.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/cadastro/form_cadastro_state.dart';

import '../../../../../core/common/widgets/elevated_button_centralizado.dart';
import '../../../../../core/constants/app_dimens.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../widgets/custom_imput_text.dart';
import '../../widgets/custom_textfiewd.dart';

class CadastroScreen extends ConsumerStatefulWidget {
  const CadastroScreen({super.key});

  @override
  ConsumerState<CadastroScreen> createState() => _CadastroScreenState();
}

class _CadastroScreenState extends ConsumerState<CadastroScreen> {
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _nomeController = TextEditingController();
  final _sobrenomeController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();
    _nomeController.dispose();
    _sobrenomeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formaState = ref.watch(cadastroProvider);
    final formNotifier = ref.watch(cadastroProvider.notifier);

    ref.listen<FormCadastroState>(cadastroProvider, (previous, next) {

      if (previous?.isLoading == true && next.isSucesso) {
        _emailController.clear();
        _senhaController.clear();
        _nomeController.clear();
        _sobrenomeController.clear();
      }
    });

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(AppDimens.spacingG),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Text(AppStrings.cadastro, style: TextStyle(fontSize: AppDimens.textXG)),
              SizedBox(height: AppDimens.spacingXG),

              CustomImputText(
                controller: _nomeController,
                hint: AppStrings.nome,
                label: AppStrings.exemploNome,
                inputType: TextInputType.name,
                icone: Icons.person,
                onChanged: (v) => formNotifier.onNomeChanged(v)
              ),
              if (formaState.erroNome != null)
                Text(formaState.erroNome ?? '' , style: TextStyle(color: Colors.red)),
              SizedBox(height: AppDimens.spacingG),

              CustomImputText(
                controller: _sobrenomeController,
                hint: AppStrings.sobrenome,
                label: AppStrings.exemploSobrenome,
                inputType: TextInputType.name,
                icone: Icons.person,
                onChanged: (v) => formNotifier.onSobrenomeChanged(v),
              ),
              if (formaState.erroSobrenome != null)
                Text(formaState.erroSobrenome ?? '' , style: TextStyle(color: Colors.red)),
              SizedBox(height: AppDimens.spacingG),

              CustomImputText(
                controller: _emailController,
                hint: AppStrings.exemploEmail,
                label: AppStrings.email,
                inputType: TextInputType.emailAddress,
                icone: Icons.email,
                onChanged: (v) => formNotifier.onEmailChanged(v),
              ),
              if (formaState.erroEmail != null)
                Text(formaState.erroEmail ?? '' , style: TextStyle(color: Colors.red)),
              SizedBox(height: AppDimens.spacingG),

              CustomImputText(
                controller: _senhaController,
                hint: AppStrings.exemploSenha,
                label: AppStrings.senha,
                inputType: TextInputType.visiblePassword,
                icone: Icons.lock,
                onChanged: (v) => formNotifier.onSenhaChanged(v),
              ),
              if (formaState.erroSenha != null)
                Text(formaState.erroSenha ?? '' , style: TextStyle(color: Colors.red)),

              if (formaState.camposValidos && formaState.erro != null)
                  Text(formaState.erro ?? '' , style: TextStyle(color: Colors.red)),


              if (formaState.isLoading)
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Center(
                    child: CircularProgressIndicator()
                  ),
                ),

              ElevatedButtonCentralizado(
                clique: () {
                  ref.read(cadastroProvider.notifier).cadastrar();
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
