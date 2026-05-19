import 'dart:convert';

import 'package:citas_app/models/cita.dart';
import 'package:http/http.dart' as http;

class ApiService {

  Future <List<Cita>> getCitas() async{

    const String url = 'https://dummyjson.com/quotes' ; 
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {  // La recerca de dades ha anat bé

    final List data = jsonDecode(response.body)['quotes'];

    return data.map((e) => Cita.fromJson(e)).toList();

    }
    throw Exception('Error al conectar con la API.');

  }
}