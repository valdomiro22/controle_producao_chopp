import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/common/widgets/elevated_button_centralizado.dart';
import '../../../domain/entities/grade_entity.dart';
import 'editar_grade_notifier.dart';

class EditarGradeScreen extends ConsumerStatefulWidget {
  final GradeEntity gradeRecebida;

  const EditarGradeScreen({super.key, required this.gradeRecebida});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EditarGradeScreenState();
}

class _EditarGradeScreenState extends ConsumerState<EditarGradeScreen> {
  final _numeroController = TextEditingController();
  DateTime? _dataSelecionada;

  @override
  void initState() {
    super.initState();
    _numeroController.text = widget.gradeRecebida.numeroGrade.toString();
    _dataSelecionada = widget.gradeRecebida.data;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(editarGradeNotifierProvider);

    ref.listen(editarGradeNotifierProvider, (previous, next) {
      if (state.isSucesso) {
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
            SizedBox(height: 50),
            TextField(
              controller: _numeroController,
              decoration: InputDecoration(
                labelText: 'Número da Grade',
                hintText: 'Ex: 01',
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
            SizedBox(height: 20),

            if (state.carregando) Center(child: CircularProgressIndicator()),
            SizedBox(height: 16),

            ElevatedButtonCentralizado(
              texto: 'Salvar',
              clique: () {
                final numero = _numeroController.text;
                final grade = widget.gradeRecebida.copyWith(
                  numeroGrade: int.parse(numero),
                  data: _dataSelecionada,
                );

                ref
                    .read(editarGradeNotifierProvider.notifier)
                    .editarGrade(grade: grade, gradeId: grade.id!);
              },
            ),
          ],
        ),
      ),
    );
  }
}
