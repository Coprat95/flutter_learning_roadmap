import 'dart:io';

void main(List<String> args) {
  // int userAge = 18;
  // if (userAge >= 18) {
  //   print('Eres mayor de edad');
  // } else {
  //   print('Eres menor de edad');  
  // }

//     int edadUsuario = 1;
//     for (int i = 0; i < 17 ; i++) {
//       print('Es menor de edad, tiene $edadUsuario años');
//       edadUsuario++;
//     }
//     print('El usuario es mayor de edad, tiene $edadUsuario años');
// }

// if básico, parecido a java
// print('Ingresa sus años de experiencia como programador:');
// int experiencia = int.parse(stdin.readLineSync()!);
// if (experiencia < 3) {
//   print('Eres un programador junior');
// } else if (experiencia < 5) {
//   print('Eres un programador mid ');
// } else {
//   print('Eres un programador senior');
// }


// Operador ternario, es una forma más compacta de escribir un if-else.
// print ('Ingresa tu edad');
// int edad = int.parse(stdin.readLineSync()!);
// (edad <18) ? print('Eres menor de edad') : print ('Eres mayor de edad');


// if largo.. no es recomendable. 
// print ('Ingresa el día de la semana (1-7):');
// int diaSemana = int.parse(stdin.readLineSync()!);
// if (diaSemana ==1) {
//   print('Lunes');
// } else if (diaSemana == 2) {
//   print('Martes');
// } else if (diaSemana == 3) {
//   print('Miércoles');
// } else if (diaSemana == 4) {
//   print('Jueves');
// } else if (diaSemana == 5) {
//   print('Viernes');
// } else if (diaSemana == 6) {
//   print('Sábado');
// } else if (diaSemana == 7) {
//   print('Domingo');
// } else {
//   print('Número inválido, ingresa un número entre 1 y 7');
// }


// sintaxis while y switch en dart . 

// print('Ingresa el día de la semana (1-7):');
//  int diaSemana = int.parse(stdin.readLineSync()!);

//  while(diaSemana < 1 || diaSemana > 7) {
//    print('Número inválido, ingresa un número entre 1 y 7');
//    diaSemana = int.parse(stdin.readLineSync()!);
//  }

//   switch (diaSemana) {
//     case 1:
//     print('Lunes');
//     break;
//     case 2:
//     print('Martes');
//     break;
//     case 3:
//     print('Miércoles');
//     break;
//     case 4:
//     print('Jueves');
//     break;
//     case 5:
//     print('Viernes');
//     break;
//     case 6:
//     print('Sábado');
//     break;
//     case 7:
//     print('Domingo');
//     break;
//   }

/*
EJERCICIO 3 : Identificar números positivos y negativos

Escribe un programa en Dart que determine si un número ingresado por el usuario es positivo, negativo o cero.

*/


// void comprobarNumero() { 
//   print('Ingresa un número:');
//   int numero = int.parse(stdin.readLineSync()!);

//   switch(numero) {
//     case <0:
//       print('El número es negativo');
//       break;
//     case 0:
//       print('El número es cero');
//       break;
//     default:
//       print('El número es positivo');
//   }
// }
// comprobarNumero();

/* EJERCICIO 4: MESES DEL AÑO 
Escribe un programa en Dart que reciba un número entre el 1 y el 12 e imprima el nombre del mes . */


void mesesDelAnyo() {
  print('Ingresa un número entre 1 y 12 ');
  int mes = int.parse(stdin.readLineSync()!);
  while(mes < 1 || mes > 12) {
    print('Número inválido, ingresa un número entre 1 y 12');
    mes = int.parse(stdin.readLineSync()!);
  }
  switch(mes) {
    case 1:
      print('Enero');
      break;
    case 2:
      print('Febrero');
      break;
    case 3:
      print('Marzo');
      break;
    case 4:
      print('Abril');
      break;
    case 5:
      print('Mayo');
      break;
    case 6:
      print('Junio');
      break;
    case 7:
      print('Julio');
      break;
    case 8:
      print('Agosto');
      break;
    case 9:
      print('Septiembre');
      break;
    case 10:
      print('Octubre');
      break;
    case 11:
      print('Noviembre');
      break;
    case 12:
      print('Diciembre');
      break;
     
  }
  
}

mesesDelAnyo();

}



