import 'package:flutter/material.dart';

import '../../widgets/item_producao.dart';

class RelatorioScreen extends StatefulWidget {
  const RelatorioScreen({super.key});

  @override
  State<RelatorioScreen> createState() => _RelatorioScreenState();
}

class _RelatorioScreenState extends State<RelatorioScreen> {
  final hoje =
      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}';

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Gerar relatorio'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Stack(
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
                  ItemProducao(
                    tipo: '30L',
                    pendente: '654',
                    produzido: '58',
                    programado: '999',
                  ),
                  SizedBox(height: 16),
                  ItemProducao(
                    tipo: '50L',
                    pendente: '654',
                    produzido: '58',
                    programado: '999',
                  ),
                  SizedBox(height: 16),
                  ItemProducao(
                    tipo: '15L',
                    pendente: '654',
                    produzido: '58',
                    programado: '999',
                  ),
                  SizedBox(height: 16),
                  ItemProducao(
                    tipo: '30L Escuro',
                    pendente: '654',
                    produzido: '58',
                    programado: '999',
                  ),
                  SizedBox(height: 16),
                  Text('➖➖➖➖➖➖➖➖➖'),
                  SizedBox(height: 16),
                  Text(
                    'CHOP PETRA',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  ItemProducao(
                    tipo: '50L',
                    pendente: '654',
                    produzido: '58',
                    programado: '999',
                  ),
                  SizedBox(height: 16),
                  ItemProducao(
                    tipo: '30L',
                    pendente: '654',
                    produzido: '58',
                    programado: '999',
                  ),
                  SizedBox(height: 16),
                  ItemProducao(
                    tipo: '15L',
                    pendente: '654',
                    produzido: '58',
                    programado: '999',
                  ),
                ],
              ),
            ),
            Positioned(
              right: 10,
              top: altura / 3,
              child: Column(
                children: [
                  Icon(Icons.share),
                  SizedBox(height: 8),
                  Icon(Icons.copy),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
