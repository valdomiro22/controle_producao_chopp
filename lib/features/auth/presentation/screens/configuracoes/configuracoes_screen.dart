import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/constants/app_dimmens.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/configuracoes/configuracoes_notifier.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/widgets/CustomButtonMaxWidth.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../widgets/foto_perfil_wieget.dart';

class ConfiguracoesScreen extends ConsumerStatefulWidget {
  const ConfiguracoesScreen({super.key});

  @override
  ConsumerState<ConfiguracoesScreen> createState() => _ConfiguracoesScreenState();
}

class _ConfiguracoesScreenState extends ConsumerState<ConfiguracoesScreen> {
  final _nomeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(configuracoesNotifierProvider);
    final notifier = ref.read(configuracoesNotifierProvider.notifier);

    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(AppDimmens.spacingG),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Text('Configurações', style: TextStyle(fontSize: 32)),
              const SizedBox(height: 50),

              // Imagem de perfil
              Center(
                child: Stack(
                  children: <Widget>[
                    FotoPerfilWieget(imageUrl: ''),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: AppColors.secondaryRed,
                          child: Icon(Icons.camera_alt, color: Colors.white, size: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppDimmens.spacingXG),

              // Nome e email do usuario logado
              Text('Nome sobrenome', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

              Text('Email', style: TextStyle(fontSize: 14)),
              SizedBox(height: AppDimmens.spacingG),

              // Botões de ações
              Custombuttonmaxwidth(texto: 'Alterar Nome', clique: () {}, isMaxWidth: true),
              SizedBox(height: AppDimmens.spacingG),

              Custombuttonmaxwidth(
                texto: 'Alterar E-mail',
                clique: () => context.push(AppRoutesNames.alterarEmail),
                isMaxWidth: true,
              ),
              SizedBox(height: AppDimmens.spacingG),

              Custombuttonmaxwidth(
                texto: 'Alterar Senha',
                clique: () {
                },
                isMaxWidth: true,
              ),
              SizedBox(height: AppDimmens.spacingG),

              Custombuttonmaxwidth(texto: 'Deletar Conta', clique: () {}, isMaxWidth: true),
              SizedBox(height: AppDimmens.spacingG),
            ],
          ),
        ),
      ),
    );
  }
}
