import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/common/widgets/elevated_button_centralizado.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/enums/barril.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/adicionar_grade/adicionar_grade_notifier.dart';
import 'package:go_router/go_router.dart';

class AdicionarGradeScreen extends ConsumerStatefulWidget {
  const AdicionarGradeScreen({super.key});

  @override
  ConsumerState<AdicionarGradeScreen> createState() => _AdicionarGradeScreenState();
}

class _AdicionarGradeScreenState extends ConsumerState<AdicionarGradeScreen> {
  final _numeroController = TextEditingController();
  DateTime? _dataSelecionada;
  Barril? _barrilSelecionado;

  @override
  void dispose() {
    super.dispose();
    _numeroController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(adicionarGradeNotifierProvider);

    ref.listen(adicionarGradeNotifierProvider, (asdf, next) {
      if (state.isSucesso) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Grade criada'),
            duration: Duration(seconds: 2),
            behavior: SnackBarBehavior.floating,
          ),
        );
        context.pop();
      }
    });

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            TextField(
              controller: _numeroController,
              decoration: InputDecoration(
                labelText: 'Número da Grade',
                hintText: 'Ex: 01'
              ),
            ),

            if (state.isErro)
              Text(
                '${state.erro?.message}',
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final DateTime? picker = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );

                if (picker != null && picker != _dataSelecionada) {
                  setState(() {
                    _dataSelecionada = picker;
                  });
                }
              },
              child: Text(
                _dataSelecionada == null
                    ? 'Selecione a data'
                    : 'Data ${_dataSelecionada?.day}/${_dataSelecionada?.month}/${_dataSelecionada?.year}',
              ),
            ),
            SizedBox(height: 20,),

            if (state.carregando)
              Center(
                child: CircularProgressIndicator(),
              ),
            SizedBox(height: 16,),

            ElevatedButtonCentralizado(
              texto: 'Salvar',
              clique: () {
                final numero = _numeroController.text;
                ref.read(adicionarGradeNotifierProvider.notifier).inserirGrade(
                  data: _dataSelecionada,
                  numero: numero
                );
              },
            )
          ],
        )
      )
    );
  }
}
