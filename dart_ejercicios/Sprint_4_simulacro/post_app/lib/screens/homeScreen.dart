import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:post_app/config/appColors.dart';
import 'package:post_app/models/post.dart';
import 'package:post_app/screens/detailScreen.dart';
import 'package:post_app/services/API_service.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post app',),
        centerTitle: true,
        backgroundColor: Appcolors().backgroundColor),

      body: FutureBuilder<List<Post>>(
        future: ApiService().getPosts(),
        builder: (context, snapshot) {
            // Cargando
            if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
            }
            // Error
            if (snapshot.hasError){
                return Center(child:  Text('Error : ${snapshot.error}'));
            }
            // Datos
            if (snapshot.hasData){
                final posts = snapshot.data!;
            return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  final iterator = posts[index];
                  return ListTile(  // fila de uno
                    title: Text(iterator.title),
                    subtitle: Text(iterator.body, 
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
                    
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Detailscreen(item : iterator)
                        ));
                    },
                  );
                },
            
            );
            }
        throw Text('Data error.');
        }
        
      ),
      
    );
  }
}

