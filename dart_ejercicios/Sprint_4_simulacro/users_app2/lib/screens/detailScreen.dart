import 'package:flutter/material.dart';
import 'package:users_app2/config/styles.dart';
import 'package:users_app2/models/user.dart';

class Detailscreen extends StatelessWidget {
  final User item;
  const Detailscreen({super.key , required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.fullName),backgroundColor: const Color.fromARGB(255, 83, 232, 200),),
      body: Padding(
        padding: const EdgeInsets.all(120.0),
        child: Column(
          children: [
            
            Image.network(item.image),
            Text(item.fullName,style: Styles.bodyText),
            Text(item.email,style: Styles.bodyText),
            Text(item.age.toString(),style: Styles.bodyText),
            Text(item.phone,style: Styles.bodyText),
           SizedBox(height: 100),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Volver atrás.'),
            )
        
        
        
          ],
        ),
      ),
    );
  }
}