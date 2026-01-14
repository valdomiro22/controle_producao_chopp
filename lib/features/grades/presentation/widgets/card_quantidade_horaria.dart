import 'package:flutter/material.dart';

class CardQuantidadeHoraria extends StatelessWidget {
  final String horario;
  final String quantidade;

  const CardQuantidadeHoraria({
    super.key,
    required this.horario,
    required this.quantidade,
    req
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Barris produzidos'),
            content: Container(
              width: MediaQuery.of(context).size.width - 16,
              height: 120,
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    // controller: qtHorariaVm.quantidadeController,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'Ex: 30',
                      label: Text('Quantidade'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ActionChip(label: Text('+5'), onPressed: () {
                        // qtHorariaVm.quantidadeController.text = '5';
                      }),
                      ActionChip(label: Text('+10'), onPressed: () {
                      }),
                      ActionChip(label: Text('+20'), onPressed: () {
                      }),
                      ActionChip(label: Text('+30'), onPressed: () {
                      }),
                    ],
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancelar'),
              ),
              TextButton(
                onPressed: () {
                  // qtHorariaVm.atualizarQuantidade(qtHorariaVm.quantidadeHorariaPorTurnoHora!);
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'OK',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
        },
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffd2d6de)),
            borderRadius: BorderRadius.circular(5)
        ),
        child: Column(
          children: [
            Text(
              horario,
              style: TextStyle(fontSize: 11),
            ),
            SizedBox(height: 8),
            Text(
              quantidade,
              style: TextStyle(
                  color: Color(0xff0840a1),
                  fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
      ),
    );
  }
}
