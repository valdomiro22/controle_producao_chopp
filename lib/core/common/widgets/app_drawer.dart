import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/theme/app_colors.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/configuracoes/buscar_usuario_notifier.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/configuracoes/buscar_usuario_state.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';

import '../../../features/auth/domain/entity/usuario_entity.dart';
import '../../../features/auth/presentation/widgets/foto_perfil_wieget.dart';
import '../../../features/producoes/presentation/screens/home/home_notifier.dart';

class AppDrawer extends ConsumerStatefulWidget {
  const AppDrawer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppDrawerState();
}

class _AppDrawerState extends ConsumerState<AppDrawer> {

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      // TODO - ver se colocar isso na tela splash da o resultado esperado
      ref.read(buscarUsuarioProvider.notifier).buscar();
    });
  }

  @override
  Widget build(BuildContext context) {
    // final state = ref.watch(homeProvider);
    final usuarioState = ref.watch(buscarUsuarioProvider);

    return Drawer(
      width: 260,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          usuarioState.when(
            inicial: () => const Center(child: Text('inicio'),),
            carregando: () => const Center(child: CircularProgressIndicator()),
            sucesso: () => const Center(child: Text('Sucesso'),),
            erro: (failure) => Center(child: Text(failure.message)),
            sucessoComDados: (UsuarioEntity usuario) {

              final nome = usuario.nomeCompleto.length > 23
                  ? usuario.nomeCompleto.substring(0, 23)
                  : usuario.nomeCompleto;
              final email = usuario.email.length > 23
                  ? usuario.email.substring(0, 23)
                  : usuario.email;

              return Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 32, left: 10, bottom: 8),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.transparent, width: 0.0)),
                  color: AppColors.red900,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Stack(
                        children: <Widget>[FotoPerfilWieget(imageUrl: usuario.fotoPerfilUrl, tamanho: 100)],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              nome,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Text(email, style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            context.pop();
                            context.push(AppRoutesNames.configuracoes);
                          },
                          icon: Icon(Icons.settings, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },

          ),
          // Divider(),
          SizedBox(height: 8),
          ListTile(
            leading: const Icon(Icons.home, color: AppColors.red900),
            title: const Text('Home'),
            onTap: () {
              context.pop();
              context.push(AppRoutesNames.home);
            },
          ),
          ListTile(
            leading: const Icon(Icons.stacked_bar_chart_rounded, color: AppColors.red900),
            title: const Text('Adicionar Grade'),
            onTap: () {
              context.pop();
              context.push(AppRoutesNames.adicionarGrade);
            },
          ),
          ListTile(
            leading: const Icon(Icons.list, color: AppColors.red900),
            title: const Text('Lista de Grades'),
            onTap: () {
              context.pop();
              context.push(AppRoutesNames.listaGrades);
            },
          ),
          ListTile(
            leading: const Icon(Icons.list, color: AppColors.red900),
            title: const Text('Cacular tempo parada'),
            onTap: () {
              context.pop();
              context.push(AppRoutesNames.calculadoraTempoParadas);
            },
          ),
          ListTile(
            leading: const Icon(Icons.list, color: AppColors.red900),
            title: const Text('Caculadora de horas'),
            onTap: () {
              context.pop();
              context.push(AppRoutesNames.calculadoraHoras);
            },
          ),
          // TODO - Adicionar Produção
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app, color: AppColors.red900),
            title: const Text('Sair'),
            onTap: () {
              ref.read(homeProvider.notifier).deslogar();
            },
          ),
        ],
      ),
    );
  }
}
