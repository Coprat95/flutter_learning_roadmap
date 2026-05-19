import 'package:flutter/material.dart';
import 'package:nonna_app/styles/appColors/colorsApp.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _Signupscreen();
}

class _Signupscreen extends State<Signupscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.backgroundTheme,),
      backgroundColor: AppColors.backgroundTheme,
      body: Column(children: [SizedBox(height: 100), Text('Muchos muebles', style: TextStyle(fontSize: 50),)]),
    );
  }
}
