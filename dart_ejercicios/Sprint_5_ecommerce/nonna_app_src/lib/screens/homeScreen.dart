import 'package:flutter/material.dart';
import 'package:nonna_app/styles/appColors/colorsApp.dart';

class LogginScreen extends StatefulWidget {
  const LogginScreen({super.key});

  @override
  State<LogginScreen> createState() => _LogginscreenState();
}

class _LogginscreenState extends State<LogginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.backgroundTheme,),
      backgroundColor: AppColors.backgroundTheme,
      body: Column(children: [SizedBox(height: 100), Text('Muchos muebles', style: TextStyle(fontSize: 50),)]),
    );
  }
}
