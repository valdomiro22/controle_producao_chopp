import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/constants/app_strings.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alterarnome/alterar_nome_notifier.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/configuracoes/buscar_usuario_state.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/state/alteracoes_usuario_state.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/widgets/custom_textfiewd.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_dimens.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../domain/entity/usuario_entity.dart';
import '../configuracoes/buscar_usuario_notifier.dart';

class AlterarNomeScreen extends ConsumerStatefulWidget {
  const AlterarNomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AlterarNomeScreenState();
}

class _AlterarNomeScreenState extends ConsumerState<AlterarNomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _sobrenomeController = TextEditingController();

  @override
  void dispose() {
    _nomeController.dispose();
    _sobrenomeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final usuarioState = ref.watch(buscarUsuarioProvider);
    final state = ref.watch(alterarNomeProvider);
    final notifier = ref.read(alterarNomeProvider.notifier);

    ref.listen<AlteracoesUsuarioState>(alterarNomeProvider, (previous, next) {
      if (previous == AlteracoesUsuarioState.carregando() &&
          next == AlteracoesUsuarioState.sucesso()) {
        _nomeController.clear();
        _sobrenomeController.clear();
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.alterarNome)),
      body: usuarioState.when(
        sucessoComDados: (UsuarioEntity usuario) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(AppDimens.spacingG),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    AppStrings.alterarNomeInfo,
                    style: TextStyle(color: AppColors.secondaryText),
                  ),
                  const SizedBox(height: AppDimens.spacingXG),

                  TextField(
                    controller: _nomeController,
                    decoration: InputDecoration(
                      labelText: 'Novo nome',
                      hintText: AppStrings.exemploNome,

                    ),
                      keyboardType: TextInputType.name,
                  ),
                  const SizedBox(height: AppDimens.spacingMM),

                  TextField(
                    controller: _sobrenomeController,
                    decoration: InputDecoration(
                      labelText: 'Novo Sobrenome',
                      hintText: AppStrings.exemploSobrenome,

                    ),
                      keyboardType: TextInputType.name,
                  ),
                  const SizedBox(height: AppDimens.spacingMM),

                  ElevatedButton(
                    onPressed: () {
                      final nome = _nomeController.text.trim();
                      final sobrenome = _sobrenomeController.text;

                      notifier.alterarNome(
                        nome: nome,
                        sobrenome: sobrenome,
                        usuarioId: usuario.id!,
                        usuario: usuario,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: const Text(AppStrings.salvarAlteracoes),
                  ),
                ],
              ),
            ),
          );
        },
        inicial: () => const Scaffold(body: SizedBox()),
        carregando: () => const Scaffold(body: Center(child: CircularProgressIndicator())),
        sucesso: () => const Scaffold(body: SizedBox()),
        erro: (f) => Scaffold(body: Center(child: Text(f.message))),
      ),
    );
  }
}
