import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:post_app/config/appColors.dart';
import 'package:post_app/models/post.dart';

class Detailscreen extends StatelessWidget {
  final Post item;
  const Detailscreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post #${item.title}'), centerTitle: true, backgroundColor: Appcolors().backgroundColor,),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              item.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left:20, right:20),
            child: Text(item.body, style: const TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
