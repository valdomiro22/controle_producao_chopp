import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';

import '../../../features/grades/presentation/screens/home/home_notifier.dart';
import '../../theme/app_colors.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeNotifierProvider);

    return Drawer(
      width: 240,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(
              top: 32,
              left: 10,
              bottom: 16
            ),
            decoration: BoxDecoration(
              color: AppColors.primaryRed,
              border: Border(
                bottom: BorderSide(
                  color: Colors.transparent,
                  width: 0.0,
                )
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Drawer'),
                IconButton(
                  onPressed: () {
                    context.pop();
                    context.push(AppRoutesNames.configuracoes);
                  },
                  icon: Icon(Icons.settings, color: Colors.white,),
                )
              ],
            ),
          ),
          SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.home, color: AppColors.primaryRed),
            title: const Text('Home'),
            onTap: () {
              context.pop();
              context.push(AppRoutesNames.home);
            },
          ),
          ListTile(
            leading: const Icon(Icons.stacked_bar_chart_rounded, color: AppColors.primaryRed),
            title: const Text('Adicionar Grade'),
            onTap: () {
              context.pop();
              context.push(AppRoutesNames.adicionarGrade);
            },
          ),
          ListTile(
            leading: const Icon(Icons.list, color: AppColors.primaryRed),
            title: const Text('Lista de Grades'),
            onTap: () {
              context.pop();
              context.push(AppRoutesNames.listaGrades);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app, color: AppColors.primaryRed),
            title: const Text('Sair'),
            onTap: () {
              ref.read(homeNotifierProvider.notifier).deslogar();
            },
          ),
        ],
      ),
    );
  }
}
