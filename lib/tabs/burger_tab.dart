import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/donut_tile.dart';

class BurgerTab extends StatelessWidget {
  //list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"]
  ];

  BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
              //Número de columnas
              crossAxisCount: 2),
        itemCount: 4,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {

          return DonutTile(
            donutFlavor: donutsOnSale[index][0],
              donutStore: donutsOnSale[index][1],
              donutPrice: donutsOnSale[index][2],
              donutColor: donutsOnSale[index][3],
              imageName: donutsOnSale[index][4]
          );
        });
  }
}