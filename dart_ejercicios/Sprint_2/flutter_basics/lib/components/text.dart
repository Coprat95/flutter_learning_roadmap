import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Column(
        children: [
          Spacer(),
          Text('Texto básico'),
          Text('Texto grande', style: TextStyle(fontSize: 30)),
          Text(
            'Texto grueso',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text('Texto curvado', style: TextStyle(fontStyle: FontStyle.italic)),
          Text(
            'Texto coloreado',
            style: TextStyle(color: const Color.fromARGB(255, 131, 82, 255)),
          ),
          Text(
            'Texto tachado',
            style: TextStyle(
              decoration: TextDecoration.lineThrough,
              fontSize: 30,
            ),
          ),
          Text(
            'Texto tachado y coloreado',
            style: TextStyle(
              color: const Color.fromARGB(255, 48, 22, 178),
              decoration: TextDecoration.lineThrough,
            ),
          ),
          Text(
            'Espacio entre letras',
            style: TextStyle(letterSpacing: 5, fontSize: 30),
          ),
          Text(
            'Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo ',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 30),
          ),

          Spacer(),
        ],
      ),
    );
  }
}
