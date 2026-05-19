import 'package:flutter/material.dart';
import 'package:flutter_basics/components/button.dart';
import 'package:flutter_basics/components/image.dart';
import 'package:flutter_basics/components/text.dart';
import 'package:flutter_basics/components/textfield.dart';
import 'package:flutter_basics/layouts/column.dart';
import 'package:flutter_basics/layouts/row.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi super app'),
          actions: [
            Icon(Icons.add)
          ],
          backgroundColor: const Color.fromARGB(255, 6, 6, 6),
          foregroundColor: const Color.fromARGB(255, 241, 241, 240),
        ),
        backgroundColor: Color.fromARGB(255, 249, 232, 122),
        body:  ImageExample()
        ),
        
      );
  }
}
