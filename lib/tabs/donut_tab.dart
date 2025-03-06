import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
              //Número de columnas
              crossAxisCount: 2),
        itemCount: 2,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {
          return;
        });
  }
}
