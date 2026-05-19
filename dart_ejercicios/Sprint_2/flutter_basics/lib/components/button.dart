import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        ElevatedButton(
          onPressed: () {
            print('Botón Aceptar pulsado');
          },
          onLongPress: () {
            print('Botón Aceptar mantenido');
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.amberAccent),
          ),
          child: Text('Aceptar'),
        ),
        OutlinedButton(onPressed: () {}, child: Text('Outlined')),
        TextButton(onPressed: () {}, child: Text('TextButton')),
        FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite),
          style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(
              const Color.fromARGB(255, 229, 53, 53),
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
