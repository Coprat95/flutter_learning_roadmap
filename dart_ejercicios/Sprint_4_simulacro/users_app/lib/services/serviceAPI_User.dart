import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:users_app/models/user_model.dart';

class ServiceapiUser {
  
  ServiceapiUser();


  Future<List<UserModel>>fetchUserInfo() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      final List<dynamic> list  =jsonDecode(response.body);
      return list.map((user) => UserModel.fromJson(user)).toList();
    }
    throw Exception('Error al cargar el post.');
  }
  
}