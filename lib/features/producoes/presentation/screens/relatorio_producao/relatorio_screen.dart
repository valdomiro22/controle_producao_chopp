import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gestao_producao_chopp/core/utils/string_util.dart';
import 'package:gestao_producao_chopp/features/grades/domain/entities/grade_entity.dart';
import 'package:gestao_producao_chopp/features/grades/presentation/screens/lista_grades/buscar_grade_notifier.dart';
import 'package:gestao_producao_chopp/features/grades/presentation/screens/lista_grades/buscar_grade_state.dart';
import 'package:share_plus/share_plus.dart';

import '../../widgets/item_producao.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

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

  String _gerarMensagemRelatorio(GradeEntity grade) {
    final data = StringUtil.formatarData(grade.data.toIso8601String());
    final buffer = StringBuffer();



    buffer.writeln('*RELATÓRIO DE PRODUÇÃO - $data*');
    buffer.writeln('Grade: ${grade.numeroGrade}');
    buffer.writeln('');

    buffer.writeln('CHOPP ITAIPAVA - CLARO');
    buffer.writeln('Estabilidade: ✅');
    buffer.writeln('');

    buffer.writeln('*30L*');
    buffer.writeln('Programado: 999 ✅');
    buffer.writeln('Produzido: 58 ❌');
    buffer.writeln('Pendente: 654 ❌');
    buffer.writeln('');

    buffer.writeln('*50L*');
    buffer.writeln('Programado: 999 ✅');
    buffer.writeln('Produzido: 58 ❌');
    buffer.writeln('Pendente: 654 ❌');
    buffer.writeln('');

    buffer.writeln('*15L*');
    buffer.writeln('Programado: 999 ✅');
    buffer.writeln('Produzido: 58 ❌');
    buffer.writeln('Pendente: 654 ❌');
    buffer.writeln('');

    buffer.writeln('CHOPP ITAIPAVA - ESCURO');
    buffer.writeln('Estabilidade: ✅');
    buffer.writeln('*30L*');
    buffer.writeln('Programado: 999 ✅');
    buffer.writeln('Produzido: 58 ❌');
    buffer.writeln('Pendente: 654 ❌');

    buffer.writeln('\n➖➖➖➖➖➖➖➖➖\n');

    buffer.writeln('CHOPP ITAIPAVA - ESCURO');
    buffer.writeln('Estabilidade: ✅');
    buffer.writeln('');

    buffer.writeln('*30L*');
    buffer.writeln('Programado: 999 ✅');
    buffer.writeln('Produzido: 58 ❌');
    buffer.writeln('Pendente: 654 ❌');
    buffer.writeln('');

    buffer.writeln('*50L*');
    buffer.writeln('Programado: 999 ✅');
    buffer.writeln('Produzido: 58 ❌');
    buffer.writeln('Pendente: 654 ❌');

    return buffer.toString();
  }

  Future<void> _copiarMensagem(GradeEntity grade) async {
    final msg = _gerarMensagemRelatorio(grade);
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

  Future<void> _compartilharMensagem(GradeEntity grade) async {
    final msg = _gerarMensagemRelatorio(grade);
    await Share.share(msg, subject: 'Relatório de Produção');
  }

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final gradeState = ref.watch(buscarGradeProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Gerar relatorio')),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: gradeState.when(
          inicial: () => const SizedBox(),
          carregando: () => const Center(child: CircularProgressIndicator()),
          sucessoComDados: (GradeEntity grade) {
            return Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Prosução de Chopp $hoje',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text('Grade: 1'),
                      Text(
                        '\nCHOP CLARO ITAIPAVA',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text('Estabilidade: ✅'),

                      ItemProducao(tipo: '30L', pendente: '654', produzido: '58', programado: '999'),
                      SizedBox(height: 16),

                      ItemProducao(tipo: '50L', pendente: '654', produzido: '58', programado: '999'),
                      SizedBox(height: 16),

                      ItemProducao(tipo: '15L', pendente: '654', produzido: '58', programado: '999'),
                      SizedBox(height: 16),

                      ItemProducao(
                        tipo: '30L Escuro',
                        pendente: '654',
                        produzido: '58',
                        programado: '999',
                      ),
                      Text('Estabilidade: ✅'),
                      SizedBox(height: 16),

                      Text('➖➖➖➖➖➖➖➖➖'),

                      SizedBox(height: 16),
                      Text('CHOP PETRA', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text('Estabilidade: ✅'),

                      ItemProducao(tipo: '50L', pendente: '654', produzido: '58', programado: '999'),
                      SizedBox(height: 16),

                      ItemProducao(tipo: '30L', pendente: '654', produzido: '58', programado: '999'),
                      SizedBox(height: 16),

                      ItemProducao(tipo: '15L', pendente: '654', produzido: '58', programado: '999'),
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  top: altura / 3,
                  child: Column(
                    children: [
                      IconButton(onPressed: () async {
                        await _compartilharMensagem(grade);
                      }, icon: Icon(Icons.share)),
                      SizedBox(height: 8),
                      IconButton(onPressed: () async {
                        await _copiarMensagem(grade);
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
