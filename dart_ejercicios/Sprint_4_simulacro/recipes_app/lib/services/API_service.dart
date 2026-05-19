import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recipes_app/models/recipe.dart';

class ApiService {

  Future <List<Recipe>>getRecipes() async {

    final response = await http.get(Uri.parse('https://dummyjson.com/recipes'));

    if (response.statusCode == 200) {
       List data = jsonDecode(response.body)['recipes'];

     return data.map((e) => Recipe.fromJson(e)).toList(); 
          }
    throw Exception('Error loading texts.');
    }

  }
