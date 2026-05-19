import 'package:http/http.dart' as http;
import 'dart:convert';


class ApiService {
  Future<List<Data>> getDatas() async {
    final response = await http.get(
      Uri.parse('https://testback.apiabalit.com/nonna/nonna.json'));

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body)['data'];  // array directo
      return data.map((e) => Data.fromJson(e)).toList();
    }
    throw Exception('Error al cargar datos');
  }
}
