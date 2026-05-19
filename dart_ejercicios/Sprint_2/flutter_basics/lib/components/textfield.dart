import 'package:flutter/material.dart';

class TextfieldExample extends StatelessWidget {
  const TextfieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        SizedBox(
          height: 20,
        ),
       
        TextField(
          decoration: InputDecoration(
            hintText: 'Introduce tu email',
            prefix: Icon(Icons.search),
            border: OutlineInputBorder(),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Introduce tu email',
            prefix: Icon(Icons.search),
            border: OutlineInputBorder(),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(20),

          child: TextField(
            maxLines: 1,
            maxLength: 10,
            obscureText: true,  // * de contraseñas

            decoration: InputDecoration(
              hintText:
                  'Introduce tu email, Introduce tu email, introduce tu email',
              prefix: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
        ),
         TextField(
          decoration: InputDecoration(
            hintText: 'Introduce tu email',
            prefix: Icon(Icons.search),
            border: OutlineInputBorder(),
          ),
        ),
         TextField(
          decoration: InputDecoration(
            hintText: 'Introduce tu email',
            prefix: Icon(Icons.search),
            border: OutlineInputBorder(),
          ),
        ),
    
      ],
    );
  }
}
