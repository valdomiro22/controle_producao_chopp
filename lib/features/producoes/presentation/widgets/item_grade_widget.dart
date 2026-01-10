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
        padding: EdgeInsets.only(
          left: 12, top: 10, right: 12, bottom: 2
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Data: ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  data,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),

                Spacer(),
                Text(
                  'Grade: ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  grade,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.info, color: Colors.grey, size: 30,),
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

                IconButton(
                  icon: Icon(Icons.delete, color: Colors.red, size: 30,),
                  onPressed: _deletarGrade,
                ),

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
          ],
        )
      ),
    );
  }
}

@Preview(name: 'Card Produção')
Widget myPreview() {
  return ItemGradeWidget(
    data: 'Data: 01/01/2026',
    grade: 'Grade: 01',
  );
}