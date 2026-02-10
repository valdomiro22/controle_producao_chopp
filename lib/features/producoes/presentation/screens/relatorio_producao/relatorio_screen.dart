import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gestao_producao_chopp/core/di/usecases/producao_use_cases_provider.dart';
import 'package:gestao_producao_chopp/core/utils/string_util.dart';
import 'package:gestao_producao_chopp/features/grades/domain/entities/grade_entity.dart';
import 'package:gestao_producao_chopp/features/grades/domain/enums/barril.dart';
import 'package:gestao_producao_chopp/features/grades/domain/enums/produto.dart';
import 'package:gestao_producao_chopp/features/grades/presentation/screens/lista_grades/buscar_grade_notifier.dart';
import 'package:gestao_producao_chopp/features/grades/presentation/screens/lista_grades/buscar_grade_state.dart';
import 'package:share_plus/share_plus.dart';

import '../../../domain/entities/producao_entity.dart';
import '../../widgets/item_producao.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../lista_producoes/lista_producoes_notifier.dart';
import '../lista_producoes/lista_producoes_state.dart';

class RelatorioScreen extends ConsumerStatefulWidget {
  final String gradeId;

  const RelatorioScreen({super.key, required this.gradeId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RelatorioScreenState();
}

class _RelatorioScreenState extends ConsumerState<RelatorioScreen> {
  final hoje = StringUtil.formatarData(DateTime.now().toIso8601String());

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(buscarGradeProvider.notifier).buscar(widget.gradeId);
    });
  }

  void _escreverBlocoProducao(StringBuffer buffer, Barril baril, ProducaoEntity p) {
    final programada = p.quantidadeProgramada;
    final produzida = p.quantidadeProduzida;
    final pendente = p.quantidadePendente;
    final icone = produzida < programada ? "❌" : "✅";

    buffer.writeln('*${baril.label}*');
    buffer.writeln('Programado: $programada ✅');
    buffer.writeln('Produzido: $produzida $icone');
    buffer.writeln('Pendente: $pendente $icone');
    buffer.writeln('');
  }

  String _gerarMensagemRelatorio(GradeEntity grade, List<ProducaoEntity> lista) {
    final data = StringUtil.formatarData(grade.data.toIso8601String());
    final buffer = StringBuffer();

    final porProduto = <String, Map<String, ProducaoEntity>>{};
    for (final p in lista) {
      porProduto.putIfAbsent(p.produto.labelMaiusculas, () => {});
      porProduto[p.produto.labelMaiusculas]![p.tipoBarril.label] = p;
    }

    final produtos = Produto.values.toList();
    final tipos = Barril.values.toList();

    buffer.writeln('*PRODUÇÃO - $data*');
    buffer.writeln('Grade: ${grade.numeroGrade}');
    buffer.writeln('');

    for (var i = 0; i < produtos.length; i++) {
      final produto = produtos[i];

      dev.log('Produto: ${produto.labelMaiusculas}');

      buffer.writeln(produto.labelMaiusculas);
      buffer.writeln('Estabilidade ✅');  // TODO - tornar isso dinamico e editavel
      buffer.writeln('');

      for (final tipo in tipos) {
        dev.log('Tipo: ${tipo.label}');

        final p = porProduto[produto.labelMaiusculas]?[tipo.label];

        if (p != null) {
          _escreverBlocoProducao(buffer, tipo, p);
        }
      }

      if (i < produtos.length - 1) {
        buffer.writeln('➖➖➖➖➖➖➖➖➖\n');
      }
    }

    return buffer.toString().trim();
  }

  Future<void> _copiarMensagem(GradeEntity grade, List<ProducaoEntity> lista) async {
    final msg = _gerarMensagemRelatorio(grade, lista);
    await Clipboard.setData(ClipboardData(text: msg));

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Relatório comiado!'),
        duration: Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  Future<void> _compartilharMensagem(GradeEntity grade, List<ProducaoEntity> lista) async {
    final msg = _gerarMensagemRelatorio(grade, lista);
    await Share.share(msg, subject: 'Relatório de Produção');
  }

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final gradeState = ref.watch(buscarGradeProvider);

    final producoesState = ref.watch(listaProducoesProvider);

    final lista = producoesState.maybeWhen(
      sucessoComLista: (lista) => lista,
      orElse: () => <ProducaoEntity>[],
    );

    return Scaffold(
      appBar: AppBar(title: Text('Gerar relatorio')),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: gradeState.when(
          inicial: () => const SizedBox(),
          carregando: () => const Center(child: CircularProgressIndicator()),
          sucessoComDados: (GradeEntity grade) {
            final texto = _gerarMensagemRelatorio(grade, lista);

            return Stack(
              children: [
                SingleChildScrollView(
                  child: Text(texto),
                ),
                Positioned(
                  right: 10,
                  top: altura / 3,
                  child: Column(
                    children: [
                      IconButton(onPressed: () async {
                        await _compartilharMensagem(grade, lista);
                      }, icon: Icon(Icons.share)),
                      SizedBox(height: 8),
                      IconButton(onPressed: () async {
                        await _copiarMensagem(grade, lista);
                      }, icon: Icon(Icons.copy)),
                    ],
                  ),
                ),
              ],
            );
          },
          sucesso: () => const SizedBox(),
          erro: (failure) => Center(child: Text(failure.message)),
        ),
      ),
    );
  }
}
