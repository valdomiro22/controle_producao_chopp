import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/common/widgets/elevated_button_centralizado.dart';
import 'package:go_router/go_router.dart';

import 'adicionar_grade_notifier.dart';

class AdicionarGradeScreen extends ConsumerStatefulWidget {
  const AdicionarGradeScreen({super.key});

  @override
  ConsumerState<AdicionarGradeScreen> createState() =>
      _AdicionarGradeScreenState();
}

class _AdicionarGradeScreenState extends ConsumerState<AdicionarGradeScreen> {
  final _numeroController = TextEditingController();
  DateTime? _dataSelecionada;

  @override
  void dispose() {
    super.dispose();
    _numeroController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(adicionarGradeProvider);
    final notifier = ref.watch(adicionarGradeProvider.notifier);

    ref.listen(adicionarGradeProvider, (previous, next) {
      if (next.isSucess) {
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
      appBar: AppBar(title: Text('Adicionar Grade')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _numeroController,
              decoration: InputDecoration(
                labelText: 'Número da Grade',
                hintText: 'Ex: 01',
              ),
              onChanged: (v) => notifier.inserirNumero(v),
            ),

            if (state.erroNumero != null)
              Text(
                '${state.erroNumero}',
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),

            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue
              ),
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
                    notifier.inserirData(picker);
                  });
                }
              },
              child: Text(
                _dataSelecionada == null
                    ? 'Selecione a data'
                    : 'Data ${_dataSelecionada?.day}/${_dataSelecionada?.month}/${_dataSelecionada?.year}',
              ),
            ),
            if (state.erroData != null)
              Text(
                '${state.erroData}',
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),

            SizedBox(height: 20),

            if (state.isLoading) Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Center(child: CircularProgressIndicator()),
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: Text('Salvar'),
                onPressed: () {
                  // final numero = _numeroController.text;
                  notifier.inserirGrade();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
