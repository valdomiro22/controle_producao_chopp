import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/common/widgets/elevated_button_centralizado.dart';
import 'package:gestao_producao_chopp/core/di/usecases/auth_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/home/home_notifier.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeNotifierProvider);
    
    ref.listen(homeNotifierProvider, (previous, next) {
      if (previous?.isCarregando == true && next.isSucesso) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Deslogado'),
            duration: Duration(seconds: 2),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    });
    
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Text(
              'Home',
              style: TextStyle(fontSize: 32),
            ),
            const SizedBox(height: 50),

            ElevatedButtonCentralizado(
              texto: 'Deslogar',
              clique: () {
                ref.read(homeNotifierProvider.notifier).deslogar();
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      )
    );
  }
}
