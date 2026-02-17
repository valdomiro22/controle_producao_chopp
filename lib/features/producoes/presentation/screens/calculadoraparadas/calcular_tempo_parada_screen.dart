import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/theme/app_colors.dart';

class CalcularTempoParadaScreen extends ConsumerStatefulWidget {
  const CalcularTempoParadaScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CalcularTempoParadaScreenState();
}

class _CalcularTempoParadaScreenState extends ConsumerState<CalcularTempoParadaScreen> {
  TimeOfDay? _inicio;
  TimeOfDay? _fim;
  Duration? _diferenca;

  Future<void> selecionarInicio() async {
    final picked = await showTimePicker(context: context, initialTime: TimeOfDay.now());

    if (picked != null) {
      setState(() {
        _inicio = picked;
        calcular();
      });
    }
  }

  Future<void> selecionarFim() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        _fim = picked;
        calcular();
      });
    }
  }

  void calcular() {
    if (_inicio == null || _fim == null) return;

    final now = DateTime.now();

    DateTime inicioDateTime = DateTime(
      now.year,
      now.month,
      now.day,
      _inicio!.hour,
      _inicio!.minute,
    );

    DateTime fimDateTime = DateTime(now.year, now.month, now.day, _fim!.hour, _fim!.minute);

    // se passou da meia-noite
    if (fimDateTime.isBefore(inicioDateTime)) {
      fimDateTime = fimDateTime.add(const Duration(days: 1));
    }

    _diferenca = fimDateTime.difference(inicioDateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculadora horas'), backgroundColor: Colors.deepPurple,),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: AppColors.blueStrong),
                  onPressed: selecionarInicio,
                  child: Text(
                    _inicio == null ? 'Selecionar início' : 'Início: ${_inicio!.format(context)}',
                  ),
                ),
                Spacer(),

                ElevatedButton(
                  // style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
                  style: ElevatedButton.styleFrom(backgroundColor: AppColors.blueStrong),
                  onPressed: selecionarFim,
                  child: Text(_fim == null ? 'Selecionar fim' : 'Fim: ${_fim!.format(context)}'),
                ),
              ],
            ),
            const SizedBox(height: 16),

            Card(
              color: Colors.brown,
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    _diferenca == null
                        ? 'Selecione os horários'
                        : 'Duração: ${_diferenca!.inHours}h ${_diferenca!.inMinutes % 60}m',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
