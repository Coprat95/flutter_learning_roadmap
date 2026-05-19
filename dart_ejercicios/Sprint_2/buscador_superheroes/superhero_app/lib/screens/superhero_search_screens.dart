import 'package:flutter/material.dart';
import 'package:superhero_app/data/model/superhero_detail_response.dart';
import 'package:superhero_app/data/model/superhero_response.dart';
import 'package:superhero_app/data/repository.dart';
import 'package:superhero_app/screens/superhero_detail_screen.dart';

class SuperheroSearchScreens extends StatefulWidget {
  const SuperheroSearchScreens({super.key});

  @override
  State<SuperheroSearchScreens> createState() => _SuperheroSearchScreensState();
}

class _SuperheroSearchScreensState extends State<SuperheroSearchScreens> {
  Future<SuperheroResponse?>? _superheroInfo;
  Repository repository = Repository();
  bool _isTextEmpty = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Superhero Search')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hint: Text('Busca un superhéroe'),
                border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                setState(() {
                  _isTextEmpty = text.isEmpty;
                  _superheroInfo = repository.fetchSuperheroInfo(text);
                });
              },
            ),
          ),
          bodyList(_isTextEmpty),
        ],
      ),
    );
  }

  FutureBuilder<SuperheroResponse?> bodyList(bool _isTextEmpty) {
    return FutureBuilder(
      future: _superheroInfo,
      builder: (context, snapshot) {
        //snapshot es foto del estado actual de un future
        if (_isTextEmpty)
          return Text('Introduce un nombre', textAlign: TextAlign.center);
        if (snapshot.connectionState == ConnectionState.waiting) {
          // si está esperando una respuesta del servidor
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          // si da error
          return Text('Error: ${snapshot.error}');
        } else if (snapshot.hasData) {
          // si ha encontrado informacion
          var superHeroList = snapshot.data?.result;
          return Expanded(
            child: ListView.builder(
              itemCount: superHeroList?.length ?? 0,
              itemBuilder: (context, index) {
                if (superHeroList != null) {
                  return itemSuperhero(superHeroList[index]);
                } else {
                  return Text('Error.');
                }
              },
            ),
          );
        } else {
          return Text('No hay resultados.');
        }
      },
    );
  }

  Padding itemSuperhero(SuperheroDetailResponse item) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SuperheroDetailScreen(superhero: item))),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.red,
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(16),
                  child: Image.network(
                    item.url,
                    height: 350,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    alignment: Alignment(0, -0.6),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    
  }
}
