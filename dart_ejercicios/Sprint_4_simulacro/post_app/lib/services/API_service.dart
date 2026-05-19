
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:post_app/models/post.dart';

class ApiService {
Future<List<Post>> getPosts() async {
final response = await http.get(
  Uri.parse('https://jsonplaceholder.typicode.com/posts'),
);
// si obtenemos una respuesta correcta
if ( response.statusCode == 200) {
  // creamos lista llamado data , de contenido decodeado del jason 
  final List<dynamic> data = jsonDecode(response.body);
  // obtenemos ese contenido en una lista , preparado para usarse
  return data.map((json) => Post.fromJson(json)).toList();
}
throw Exception('Error al cargar datos.');
}
}