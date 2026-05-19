void main(List<String> args) {
  
  /* EJERCICIO 5 : SUMA DE NÚMEROS PARES EN UNA LISTA 
  Escribe un programa en Dart que tome una lista de números enteros y calcule la suma de todos los números pares en la lista
  Ejemplo : 
  Entrada : [1,2,3,4,5,6]
  Salida : la suma es de 12 (2+4+6)
  */

  // List<int> numeros = [1,2,3,4,5,6];
  // int numerosPares = 0;
  // for (int i in numeros) {
  //   if (i % 2 == 0) {
  //     numerosPares += i;
  //   }
  // }
  // print('La suma de los números pares es: $numerosPares');

  
  // int sumPares = 0;
  // for (int i in listaNumeros([1,2,3,4,5,6])) {
  //   if (i % 2 == 0) {
  //     sumPares += i;
  //   }
  // }
  // print('La suma de los números pares es: $sumPares');
// }
// List<int> listaNumeros(List<int> numeros) {
//   return numeros;
// }




/*  EJERCICO 6 : FILTRAR PALABRAS ÚNICAS EN UN SET :args
  Objetivo
  Escribe un programa en Dart que reciba una lista de palabras con algunas repetida sy almacene solo las palabras únicas en un Set.
  Luego , muestra el conjunto resultante. 

  */

// List<String> listaPalabras = ['Silla', 'Mesa', 'Silla', 'Cama', 'Sofá', 'Cama'];
// Set<String> palabrasUnicas = listaPalabras.toSet();
// print (listaPalabras);
// print('Las palabras únicas son : $palabrasUnicas');


/* EJERCICIO 7 : CONTAR FRECUENCIA DE PALABRAS EN UN MAPA
Objetivo 
Escribe un programa en Dart que reciba una lista de palabras y cuente cuántas veces aparece cada una , almacenado el resultado en un Map.
Ejemplo :  
Entrada : ['dart','flutter','dart','codigo','flutter','movil','dart']
Salida : { 'dart': 3, 'flutter': 2, 'codigo': 1, 'movil': 1 }
*/

List<String> palabras = ['dart','flutter','dart','codigo','flutter','movil','dart'];
int contadorDart = 0;
int contadorFlutter = 0;
int contadorCodigo = 0;
int contadorMovil = 0;

Map<String, int> frecuenciaPalabras = {};

for ( int i = 0; i < palabras.length; i++) {
  if ( palabras[i] == 'dart') {
    contadorDart++;
  } else if (palabras[i] == 'flutter') {
    contadorFlutter++;
  } else if (palabras[i] == 'codigo') {
    contadorCodigo++;
  } else if (palabras[i] == 'movil') {
    contadorMovil++;
  }
}
frecuenciaPalabras= {'dart': contadorDart, 'flutter': contadorFlutter, 'codigo': contadorCodigo, 'movil': contadorMovil};
print('La frecuencia de palabras es: $frecuenciaPalabras');

}