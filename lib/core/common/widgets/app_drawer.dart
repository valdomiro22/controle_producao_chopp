import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';

import '../../../features/auth/presentation/widgets/foto_perfil_wieget.dart';
import '../../../features/producoes/presentation/screens/home/home_notifier.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final state = ref.watch(homeProvider);

    final nome = 'Nome Sobrenome'.length > 23
        ? 'Nome Sobrenome'.substring(0, 23)
        : 'Nome Sobrenome';
    final email = 'nome.sobrenome@test.com'.length > 23
        ? 'nome.sobrenome@test.com'.substring(0, 23)
        : 'nome.sobrenome@test.com';

    return Drawer(
      width: 260,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 32, left: 10),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.transparent, width: 0.0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Stack(children: <Widget>[FotoPerfilWieget(imageUrl: '', tamanho: 100)]),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text(nome), Text(email)],
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        context.pop();
                        context.push(AppRoutesNames.configuracoes);
                      },
                      icon: Icon(Icons.settings, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              context.pop();
              context.push(AppRoutesNames.home);
            },
          ),
          ListTile(
            leading: const Icon(Icons.stacked_bar_chart_rounded),
            title: const Text('Adicionar Grade'),
            onTap: () {
              context.pop();
              context.push(AppRoutesNames.adicionarGrade);
            },
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('Lista de Grades'),
            onTap: () {
              context.pop();
              context.push(AppRoutesNames.listaGrades);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
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
