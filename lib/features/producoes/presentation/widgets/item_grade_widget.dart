import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:gestao_producao_chopp/core/theme/app_colors.dart';

class ItemGradeWidget extends StatelessWidget {
  // final String produto;
  final String data;
  final String grade;

  const ItemGradeWidget({
    super.key,
    // required this.produto,
    required this.data,
    required this.grade,
  });

  void _deletarGrade() {}

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.lightSurface,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   produto,
                //   style: TextStyle(
                //     color: Colors.black,
                //     fontSize: 18,
                //     fontWeight: FontWeight.w600
                //   ),
                // ),
                Text(
                  data,
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  grade,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),

            Spacer(),
            IconButton(
              icon: Icon(Icons.info, color: Colors.grey,),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Info'),
                    duration: Duration(seconds: 2),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
            ),

            SizedBox(width: 4,),
            IconButton(
              icon: Icon(Icons.delete, color: Colors.red, size: 30,),
              onPressed: _deletarGrade,
            ),

            SizedBox(width: 4,),
            IconButton(
              icon: Icon(Icons.edit, color: Colors.blue, size: 30,),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Edit'),
                    duration: Duration(seconds: 2),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
            ),

            SizedBox(width: 4,),
            IconButton(
              icon: Icon(Icons.share, color: Colors.purple, size: 30,),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Share'),
                    duration: Duration(seconds: 2),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
            ),
          ],
        )
      ),
    );
  }
}

// @Preview(name: 'Card Produção')
// Widget myPreview() {
//   return ItemGradeWidget(
//     produto: 'Itaipava 50L',
//     data: 'Data: 01/01/2026',
//     grade: 'Grade: 01',
//   );
// }