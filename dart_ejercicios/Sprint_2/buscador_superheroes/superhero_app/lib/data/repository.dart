import 'dart:convert';

import 'package:superhero_app/data/model/superhero_response.dart';
import 'package:http/http.dart' as http;


// Repository: capa que hace las peticiones a la API y devuelve los datos ya procesados.


class Repository {

  Future<SuperheroResponse?> fetchSuperheroInfo(String name ) async{  // devuelveme en el futuro la informacion del superhéroe con ese nombre
  // para hacer peticiones a red debemos añadir 
  final response= await http.get(Uri.parse('https://superheroapi.com/api/658728343b9035e4bf99470a8acd9b2b/search/$name'));

  if(response.statusCode == 200) {  // código de success ( si ha ido bien la búsqueda)
  var decodedJson = jsonDecode(response.body);  // response.body es todo el json que encuentra la API en formato texto
                                                // jsonDecode(response.body) pasamos ese texto a Map para trabajar con el con Dart. 
  
  SuperheroResponse superheroResponse = SuperheroResponse.fromJson(decodedJson); // aquí cremaos el objeto
  return superheroResponse;
  } else {
    return null; // en caso de que falle le damos valor nulo 
  }


  }
}
