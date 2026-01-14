import 'package:flutter/material.dart';

class CardStatusProducao extends StatelessWidget {
  final int? valor;
  final String label;
  final Color fundoTitulo;

  const CardStatusProducao({
    super.key,
    this.valor,
    required this.label,
    required this.fundoTitulo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 105,
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [ // Um leve sombreamento dá um toque profissional
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 4,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(2),
              alignment: Alignment.center,
              width: double.infinity,
              height: 35,
              decoration: BoxDecoration(
                  color: fundoTitulo,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10), topLeft: Radius.circular(10)
                  )
              ),
              child: Text(
                label,
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: fundoTitulo.withValues(alpha: 0.2),
                    border: Border.all(width: 2, color: fundoTitulo),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)
                    )
                ),
                child: Text(
                  valor == null ? '0' : valor.toString(),
                  style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        )
    );
  }
}