import 'package:citas_app/models/cita.dart';
import 'package:citas_app/settings/appColors.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Cita item;
  const DetailScreen({super.key ,  required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Citas'),
      backgroundColor: Appcolors.backgroundThemeColor,
      foregroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Cita nº ${item.id} : ${item.quote}.',style: TextStyle(fontSize: 20),),
            Text('Autor : ${item.author}',style: TextStyle(fontSize: 20))
        
          ],
        ),
      ),
    );
  }
}