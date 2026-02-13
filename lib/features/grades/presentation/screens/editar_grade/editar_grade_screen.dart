import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/utils/string_util.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/grade_entity.dart';
import 'editar_grade_notifier.dart';

class EditarGradeScreen extends ConsumerStatefulWidget {
  final GradeEntity gradeRecebida;

  const EditarGradeScreen({super.key, required this.gradeRecebida});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditarGradeScreenState();
}

class _EditarGradeScreenState extends ConsumerState<EditarGradeScreen> {
  final _numeroController = TextEditingController();
  DateTime? _dataSelecionada;

  @override
  void initState() {
    super.initState();

    _numeroController.text = widget.gradeRecebida.numeroGrade.toString();
    _dataSelecionada = widget.gradeRecebida.data;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final notifier = ref.read(editarGradeProvider.notifier);
      notifier.inserirNumero(widget.gradeRecebida.numeroGrade.toString());
      notifier.inserirData(_dataSelecionada!);
    });
  }


  @override
  Widget build(BuildContext context) {
    final state = ref.watch(editarGradeProvider);
    final notifier = ref.watch(editarGradeProvider.notifier);

    ref.listen(editarGradeProvider, (previous, next) {
      if (next.isSucess) {
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text('Editar Grade')),
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Número da Grade'),
            TextField(
              controller: _numeroController,
              decoration: InputDecoration(hintText: 'Ex: 01'),
              onChanged: (v) => notifier.inserirNumero(v),
            ),

            if (state.erroNumero != null)
              Text('${state.erroNumero}', style: TextStyle(color: Colors.red, fontSize: 12)),

            SizedBox(height: 20),
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
                    notifier.inserirData(_dataSelecionada!);
                  });
                }
              },
              child: Text(
                _dataSelecionada == null
                    ? 'Selecione a data'
                    : 'Data ${_dataSelecionada?.day}/${_dataSelecionada?.month}/${_dataSelecionada?.year}',
              ),
            ),
            SizedBox(height: 32),

            if (state.isLoading) Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Center(child: CircularProgressIndicator()),
            ),

            ElevatedButton(
              onPressed: () {
                final grade = widget.gradeRecebida;
                
                notifier.editarGrade(grade: grade, gradeId: grade.id!);
              },
              child: Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
