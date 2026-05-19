import 'package:flutter/material.dart';
import 'package:superhero_app/data/model/superhero_detail_response.dart';

class SuperheroDetailScreen extends StatelessWidget {
  final SuperheroDetailResponse superhero;

  const SuperheroDetailScreen({super.key, required this.superhero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(superhero.name)
      ),
      body: Column(
        children: 
        [Image.network(superhero.url, height: 300, width: double.infinity, fit: BoxFit.cover, alignment: Alignment.center),
        Text(superhero.name, style: TextStyle(fontSize: 28)),
        Text(superhero.realName, style: TextStyle(fontSize: 18)),
        Text('Power ${superhero.power}', style: TextStyle(fontSize: 18))
        ]
        )
        );
  }
}
