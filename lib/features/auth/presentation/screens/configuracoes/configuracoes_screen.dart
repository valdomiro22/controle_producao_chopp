import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/constants/app_dimens.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/configuracoes/atualizar_foto_notifier.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/configuracoes/buscar_usuario_notifier.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/configuracoes/buscar_usuario_state.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/widgets/CustomButtonMaxWidth.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../domain/entity/usuario_entity.dart';
import '../../widgets/foto_perfil_wieget.dart';

class ConfiguracoesScreen extends ConsumerStatefulWidget {
  const ConfiguracoesScreen({super.key});

  @override
  ConsumerState<ConfiguracoesScreen> createState() => _ConfiguracoesScreenState();
}

class _ConfiguracoesScreenState extends ConsumerState<ConfiguracoesScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(buscarUsuarioProvider.notifier).buscar();
    });
  }

  @override
  Widget build(BuildContext context) {
    final fotoState = ref.watch(atualizarFotoProvider);
    final fotoNotifier = ref.watch(atualizarFotoProvider.notifier);
    final stateUsuario = ref.watch(buscarUsuarioProvider);


    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações de usuário'),
      ),
      body: stateUsuario.when(
        sucessoComDados: (UsuarioEntity usuario) {


          debugPrint('\n\n\nurlFoto: ${usuario.fotoPerfilUrl}');


          return Container(
            width: double.infinity,
            padding: EdgeInsets.all(AppDimens.spacingG),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  // Imagem de perfil
                  Center(
                    child: Stack(
                      children: <Widget>[
                        FotoPerfilWieget(imageUrl: usuario.fotoPerfilUrl),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {
                              // final usuarioAtualizado = usuario.copyWith(fotoPerfilUrl: )

                              fotoNotifier.atualizar(usuario: usuario);
                            },
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
                  SizedBox(height: AppDimens.spacingGG),

                  // Nome e email do usuario logado
                  Text(
                    usuario.nomeCompleto,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  Text(usuario.email, style: TextStyle(fontSize: 14)),
                  SizedBox(height: AppDimens.spacingGG),

                  // Botões de ações
                  Custombuttonmaxwidth(
                    texto: 'Alterar Nome',
                    clique: () => context.push(AppRoutesNames.alterarNome),
                    isMaxWidth: true,
                  ),
                  SizedBox(height: AppDimens.spacingG),

                  Custombuttonmaxwidth(
                    texto: 'Alterar E-mail',
                    clique: () => context.push(AppRoutesNames.alterarEmail),
                    isMaxWidth: true,
                  ),
                  SizedBox(height: AppDimens.spacingG),

                  Custombuttonmaxwidth(
                    texto: 'Alterar Senha',
                    clique: () => context.push(AppRoutesNames.alterarSenha),
                    isMaxWidth: true,
                  ),
                  SizedBox(height: AppDimens.spacingG),

                  Custombuttonmaxwidth(
                    texto: 'Deletar Conta',
                    clique: () => context.push(AppRoutesNames.deletarConta),
                    isMaxWidth: true,
                  ),
                  SizedBox(height: AppDimens.spacingG),
                ],
              ),
            ),
          );
        },
        erro: (failure) => Center(child: Text(failure.message)),
        inicial: () => const SizedBox(),
        carregando: () => const Center(child: CircularProgressIndicator()),
        sucesso: () => const SizedBox(),
      ),
    );
  }
}
