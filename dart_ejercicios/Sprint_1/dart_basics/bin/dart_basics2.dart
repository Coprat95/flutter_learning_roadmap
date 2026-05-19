

import 'dart:io';

void main(List<String> args) {
/*
Escribe un programa que pida al usuario el año de nacimiento y calcule su edad actual.

Pasos a seguir : 
1- Pedir al usuario el año de nacimiento
2- Convertir el año de nacimiento a un número entero
3- Calcular la edad actual restando el año de nacimiento al año actual (2026)
4- Mostrar el resultado en pantalla como :"Tu edad actual es: X años."
*/

print ('Ingrese su año de nacimiento:');

// es el Scanner de Dart, es decir, la función que permite leer datos desde la consola.
 int anyoNacimiento = int.parse(stdin.readLineSync()!);
 const anyoActual = 2026;
 var edadActual = anyoActual - anyoNacimiento;
 print ('Tu edad actual es de: $edadActual años.');




  /* Escribe un programa que calcule cuanto debe pagar cada persona despues de dividir la cuenta y agregar una propina: 

1- Pedir al usuario el total de la cuenta 
2- Pedir el porcentaje de propina a agregar
3- Calcular el total a pagar sumando la propina.
4- Pedir el número de personas para dividir la cuenta.
5- Calcular cuánto debe pagar cada persona.
6- Mostar el resultado en pantalla. 
*/
    //  print ('Ingrese el total de la cuenta:');
    //  double totalCuenta = double.parse(stdin.readLineSync()!);
     
}
