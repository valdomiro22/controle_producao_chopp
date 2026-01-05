import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/common/widgets/elevated_button_centralizado.dart';
import 'package:gestao_producao_chopp/core/constants/app_dimmens.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../widgets/custom_textfiewd.dart';
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
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(AppDimmens.spacingG),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Text(
              'Configurações',
              style: TextStyle(fontSize: 32),
            ),
            const SizedBox(height: 50),

            Center(
              child: Stack(
                children: <Widget>[
                  FotoPerfilWieget( imageUrl: '',),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {

                      },
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.secondaryRed,
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: AppDimmens.spacingXG),

            Text(
              'Nome sobrenome',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),

            ),

            Text(
              'Email',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: AppDimmens.spacingG),

            ElevatedButtonCentralizado(
              texto: 'Alterar Nome',
              clique: () {},
              isMaxWidth: true,
            ),
            SizedBox(height: AppDimmens.spacingG),

            ElevatedButtonCentralizado(
              texto: 'Alterar E-mail',
              clique: () {},
              isMaxWidth: true,
            ),
            SizedBox(height: AppDimmens.spacingG),

            ElevatedButtonCentralizado(
              texto: 'Alterar Senha',
              clique: () {},
              isMaxWidth: true,
            ),
            SizedBox(height: AppDimmens.spacingG),

            ElevatedButtonCentralizado(
              texto: 'Deletar Conta',
              clique: () {},
              isMaxWidth: true,
            ),
            SizedBox(height: AppDimmens.spacingG),
          ],
        ),
      )
    );
  }
}
