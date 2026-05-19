import 'package:flutter/material.dart';
import 'package:products_app/config/appColors.dart';
import 'package:products_app/models/product.dart';

class Detailscreen extends StatelessWidget {
  // title, description, brand y price
 final Product item;


  const Detailscreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products info'),
      backgroundColor: Appcolors.backgroundColorApp,
      foregroundColor: Colors.white,),
      body: Column(
        children: [
          Text(item.title ?? ' sin título'),
          Text(item.description ?? 'sin descripción'),
          Text(item.brand ?? 'Sin marca'),
          Text(item.price.toStringAsFixed(2)),
        ],
      )
    );
      

    
  }
}