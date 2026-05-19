import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: double.infinity,
      color: const Color.fromARGB(255, 98, 208, 81),
      


      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Text('Oliver'),
          Text('Oliver'),
          Text('Oliver'),
          Text('Oliver'),
          Text('Oliver'),

          Text('Oliver'),
          Text('Oliver'),
          Text('Oliver'),
          Text('Oliver'),
          Text('Oliver'),
          Text('Oliver'),
        ],
      ),
    );
  }
}
