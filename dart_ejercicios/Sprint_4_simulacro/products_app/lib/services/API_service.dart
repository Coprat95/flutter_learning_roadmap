import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:products_app/models/product.dart';

class ApiService {

Future <List<Product>> getProducts() async{
  final  String url = 'https://dummyjson.com/products';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) { // conexión realizada correctamente

  final data = jsonDecode(response.body)['products']; // mapeamos el json
  return data.map((e) => Product.fromJson(e)).toList();  // pasamos el mapeo a objetos Product


  }

  throw Exception('Error al cargar los datos.');

}

  
  }
  