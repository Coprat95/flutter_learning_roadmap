import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:users_app2/models/user.dart';

class ApiService {

  Future <List<User>> getUsers() async {
    final String url = 'https://dummyjson.com/users';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {  // Succesfull

    final List data = jsonDecode(response.body)['users'];
    
    return data.map((e) => User.fromJson(e)).toList();

    }
  throw Exception('No data found.');

  }
}