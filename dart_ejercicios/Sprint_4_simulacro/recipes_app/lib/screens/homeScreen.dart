import 'package:flutter/material.dart';
import 'package:recipes_app/models/recipe.dart';
import 'package:recipes_app/screens/detailScreen.dart';
import 'package:recipes_app/services/API_service.dart';
import 'package:recipes_app/settings/appColors.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarStyle(),
      body: bodyHome(),
      
    );
  }

  FutureBuilder<List<Recipe>> bodyHome() {
    return FutureBuilder(
      future: ApiService().getRecipes(),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }
        if (snapshot.hasError) {
          return Center(child: Text('Error : ${snapshot.error}'),);
        }
        if (snapshot.hasData){
          final data = snapshot.data!;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final iterator = data[index] ;
              return ListTile(
                title: Text(iterator.name),
              
                subtitle: Text(iterator.cuisine,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,),
                trailing: const Icon(Icons.arrow_forward_ios),
                
                onTap: () {
                  Navigator.push(context,
                   MaterialPageRoute(
                    builder: (_) => Detailscreen(item: iterator)
                    )
                    );
                },
              );
              
              
              
            },
          );
        }
       return const Text('sin datos');
      },
  
    );
  }

  AppBar appBarStyle() {
    return AppBar(
      title: Text('Cuisine recipes'),
      backgroundColor: Appcolors.backgroundColorTheme,
      centerTitle: true,
      foregroundColor: Colors.white,
    );
  }
}
