import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  //list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    ["Ice Cream","DX Store", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry","UwU Store", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape",":D Store", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco",":( Store", "95", Colors.brown, "lib/images/chocolate_donut.png"]
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //Número de columnas
            crossAxisCount: 2,
            //Proporción entre ancho y largo
            childAspectRatio: 1 / 1.6),
        itemCount: 4,
        padding: const EdgeInsets.all(12),
        //Que elemento se cronstuira
        itemBuilder: (context, index) {
          return DonutTile(
              donutFlavor: donutsOnSale[index][0],
              donutStore: donutsOnSale[index][1],
              donutPrice: donutsOnSale[index][2],
              donutColor: donutsOnSale[index][3],
              imageName: donutsOnSale[index][4]);
        });
  }
}
