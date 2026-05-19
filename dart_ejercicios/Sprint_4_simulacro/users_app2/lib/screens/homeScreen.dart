import 'package:flutter/material.dart';
import 'package:users_app2/models/user.dart';
import 'package:users_app2/screens/detailScreen.dart';
import 'package:users_app2/services/API_service.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future: ApiService().getUsers(), builder: (context,snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return CircularProgressIndicator();
      } 
      if (snapshot.hasError) {
        return Text('Error : ${snapshot.error}');
      }
      if (snapshot.hasData) {
        final data = snapshot.data!;
       return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final iterator = data[index];
         
          return ListTile(
           leading: Image.network(iterator.image, width: 50,height: 50),
            title: Text('${iterator.firstName} ${iterator.lastName}'),
            subtitle: Text('Email: ${iterator.email}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Detailscreen(item: iterator)));
            },
          );
        },
       );
      }
      return const Text('No data found. ');
      }
  
    
    )
    
    );
  }
}
