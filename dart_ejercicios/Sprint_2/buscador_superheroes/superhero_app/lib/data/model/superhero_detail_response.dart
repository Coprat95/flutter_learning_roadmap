import 'package:http/http.dart' as http;

class SuperheroDetailResponse {
  final String id;
  final String name;
  final String url;
  final String realName;
  final String power;
  SuperheroDetailResponse({required this.id, required this.name, required this.url, required this.realName, required this.power});

  // factory SuperheroResponse.fromJson(Map<String, dynamic> json) {
  //   return SuperheroResponse(response:   json['response']);
  // }
  factory SuperheroDetailResponse.fromJson(Map<String, dynamic> json) {
    return SuperheroDetailResponse(id: json['id'], name: json['name'], url: json ['image']['url'], 
    realName: json ['biography']['full-name'], power: json ['powerstats']['power']);
  }
}
