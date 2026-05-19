import 'package:flutter/material.dart';
import 'package:products_app/config/appColors.dart';
import 'package:products_app/screens/detailScreen.dart';
import 'package:products_app/services/API_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products list:'),
        backgroundColor: Appcolors.backgroundColorApp,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: FutureBuilder(
      future: ApiService().getProducts(),
      builder: (context, snapshot) {
      
      if (snapshot.connectionState == ConnectionState.waiting){
        return CircularProgressIndicator();
      }
      if (snapshot.hasError) {
        return Center(
          child: Text('Error : ${snapshot.error}'),
        );
      }
      if (snapshot.hasData) {
        final productos = snapshot.data!;
         return ListView.builder(
          itemCount: productos.length,
          itemBuilder: (context, index) {
            final iterador = productos[index];
            return ListTile(
              title: Text(iterador.title ??' sin titulo' ,
              subtitle: Text(iterador.price.toStringAsFixed(2),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => 
              Detailscreen(
              item: iterador)));

              },

            );
          },
        );
      }
      throw Text('Error');
      }
  
    )
  
    );
  }
}
