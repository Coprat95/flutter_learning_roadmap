import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: SizedBox(
        height: 150 ,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
            Text('Oliver.'),
           
            Expanded(child: Text('Oliver2.')),
            
            Text('Oliver3.'),
           
          ],
        ),
      ),
    );
  }
}
