import 'package:http/http.dart' as http;
import 'package:superhero_app/data/model/superhero_detail_response.dart';

class SuperheroResponse {
  final String response;
  final List<SuperheroDetailResponse> result;

  SuperheroResponse({required this.response, required this.result});

  factory SuperheroResponse.fromJson(Map<String, dynamic> json) {
    var list = json['results'] as List; // Del JSON saca el campo 'result' y tratalo parsealo a lista

    // List<SuperheroDetailResponse> heroList = list.map((hero) => SuperheroDetailResponse.fromJson(hero)).toList();
  List<SuperheroDetailResponse> heroList =                               // Creamos lista de objetos SuperheroDetailResponse llamada herolist

  list.map((hero) =>  SuperheroDetailResponse.fromJson(hero)).toList();  // Recorre cada elemento del JSON (hero) y lo convierte en un SuperheroDetailResponse.



    return SuperheroResponse(response: json['response'], result: heroList);
  }

  //658728343b9035e4bf99470a8acd9b2b
  //https://superheroapi.com/api/access-token/search/name
  //https://superheroapi.com/api/658728343b9035e4bf99470a8acd9b2b/search/name
}
