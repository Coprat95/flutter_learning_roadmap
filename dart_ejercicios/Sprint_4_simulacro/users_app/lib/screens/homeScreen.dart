import 'package:flutter/material.dart';
import 'package:users_app/config/colors/appColors.dart';
import 'package:users_app/models/user_model.dart';
import 'package:users_app/screens/detailScreen.dart';
import 'package:users_app/services/serviceAPI_User.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override

UserModel? _userModel;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarStyle(),
      body: columnStyle(),
    );
  }

  
  // Widgets

  AppBar appBarStyle() {
    return AppBar(
      title: Text('Users list', style: TextStyle(color: Colors.white)),
      centerTitle: true,
      backgroundColor: AppColors.backgroundColor,
    );
  }


  Column columnStyle() {
    return Column(
      children: [
        Expanded(
          child: FutureBuilder(future: ServiceapiUser().fetchUserInfo(),  builder:(context, snapshot) {
          
            // mientras se conecta 
            if (snapshot.connectionState == ConnectionState.waiting)  {
              return const CircularProgressIndicator();
            } 
            // si da error
             if (snapshot.hasError) {
             return Center(child: Text('Error: ${snapshot.error}'));
            }
            // si encuentra datos
            if (snapshot.hasData) {
              final busquedaEncontrada = snapshot.data!;
              return ListView.builder(
                itemCount: busquedaEncontrada.length,
                itemBuilder: (context, index){
                  final user = busquedaEncontrada[index];
                  return ListTile ( 
                    title: Text(user.name),
                    subtitle: Text(user.email),
                    trailing:  const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder : (context) => Detailscreen(user : user)
                      ));
                    }
                    );
                }
              );
            };
           return const Text('Sin datos.');
          }
                 
          ),
        )
      ]
    );
  }



}
