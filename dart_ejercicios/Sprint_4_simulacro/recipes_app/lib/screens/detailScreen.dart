import 'package:flutter/material.dart';
import 'package:recipes_app/models/recipe.dart';
import 'package:recipes_app/settings/appColors.dart';

class Detailscreen extends StatelessWidget {
  final Recipe item;
  const Detailscreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDetail(),
      body: bodyDetail(),
    );
  }

  Column bodyDetail() {
    return Column(
      
      
      children:[
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 16),
          child: Text('  Cuisine : ${item.cuisine}', style: TextStyle(fontSize: 18), ),
        ),
        SizedBox(height: 16,),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 16),
          child: Text(' Difficulty: ${item.difficulty}', style: TextStyle(fontSize: 18)),
        ),
        SizedBox(height: 16,),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 16),
          child: Text(
            'Calories : ${item.caloriesPerServing.toStringAsFixed(0)}',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }

  AppBar appBarDetail() {
    return AppBar(
      title: Text(
        item.name,
        style: TextStyle(fontSize: 24),
        textAlign: .center,
      ),
      backgroundColor: Appcolors.backgroundColorTheme,
      foregroundColor: Colors.white,
    );
  }
}
