// import 'dart:ffi';

// void main(List<String> args) {
//   listLoop();
//   setLoop();
//   mapLoop();
//   // mapExample({'Oliver':30});

//   // Map<String, int> pet = {'Loro': 2, 'Perro' : 12, 'Gato': 10};
//   // mapExample(pet);
//   // greetings('Juan');
  
//   // print (suma(3,5));
//   // simpleFunction();
//   // print (suma2(10,20));
//   // optionalFunction(name:'Oliver', age: 30);
//   // print (suma3(10,20));
// // listExamples();
// // listExamples2();
// // listExamples3(['Pimiento','Brócoli','Zanahoria', 'Col']);
// // setExamples();
//   // print(newNames());
// }
// void listLoop() {
//   List<int> numeros = [1,10,20,30,40];
// //   // for clásico, se puede usar para recorrer la lista con un índice.
// //   for (int i = 0; i < numeros.length; i++) {
// //     print(numeros[i]);

  
// // }
// // // for each o for in, se puede usar para recorrer la lista directamente por los elementos.
// // for (int iterador in numeros) {
// //   print(iterador);
// // }
// numeros.forEach((element) => print(element)); // función anónima, se puede usar para recorrer la lista con una función que se ejecuta por cada elemento.
// }


// void setLoop() {
//   Set<int> numeros = {1,2,3,4,5} ;

//   // for (int i = 0; i < numeros.length; i++) {
//   //   print(numeros.elementAt(i)); // no se puede acceder a un elemento específico en un set, ya que no tiene un orden definido, pero se puede usar elementAt para acceder a un elemento por su índice.
//   // }
//   // for (int i in numeros) {
//   //   print(i);
//   // }
//   numeros.forEach((element) => print(element));
// }

// void mapLoop() {
// Map<String,int> personas = {'Oliver':30, 'Antonio':40,'Manolo':50};

// for (int i = 0; i < personas.length; i++) {
//   print(personas.keys.elementAt(i)); // accediendo a las claves del mapa por su índice.
//   print(personas.values.elementAt(i)); // accediendo a los valores del mapa por su índice.
//   print(personas.entries.elementAt(i)); // accediendo a las entradas del mapa por su índice, devuelve un MapEntry con la clave y el valor.
// }
// personas.forEach((clave, valor) {   print('Clave: $clave, Valor: $valor');});


// }
// // List<String> newNames() {
// //   List<String> names = ['Oliver', 'Juan', 'Maria','Oliver'];
//   // return names.toSet().toList(); // convierte la lista a un set para eliminar duplicados y luego vuelve a convertirlo a una lista.

// // void mapExample(Map <String, int> people){
// // print(people);
// // }

    




  
  
  
 
  

// // void greetings (String name) {
// //   print ('Hola $name, bienvenido a Dart');
// // }
// // int suma (int a, int b) {
// //   return a + b;
// // }

// // void simpleFunction() {
// //   print('Esta es una función simple');
// // } 
// // int suma2 (int a, int b) {
// //   return a + b;
// // }
// // int suma3 (int a, int b) => a + b; // función de una sola línea, no necesita llaves ni return.
  

// // void optionalFunction({String name = 'Desconocido', int age = 0}){
// //   print('Hola, eres  $name y  tienes $age años');


// // LISTAS ( ARRAYS ) EN DART
// // void listExamples(){
// //   List<String> names = ['Oliver', 'Juan', 'Maria'];
// //   // var names2 = ['Pepe', 'Ana', 'Luis']; // tipo inferido, no es necesario especificar el tipo.
// //   print (names[0]); // accediendo al primer elemento de la lista.
// //   print ( names.first);
// //   print (names.last);
// //   print (names.length);
// //   names.add('Sofia'); // agregando un elemento a la lista.
// //   print (names);
// //   names.removeAt(2); // eliminando el elemento en la posición 2 (Maria).
// //   print (names);
// //   names.add('Maria');
// //   print (names);
// //   names[3] = 'Ana'; // modificando el elemento en la posición 3 (Maria).
// //   print(names);
// //   names.removeRange(1, names.length);
// //   print (names);
// //   names.insert(1, 'Pepe'); // insertando un elemento en la posición 1 (Pepe).
// //   print (names);
// // }

// //  void listExamples2() {
// //   List<String> fruits = ['Manzana', 'Banana', 'Naranja'];
// //   print (fruits);
// //   fruits.add('Pera');
// //   print (fruits);
// //   }
// //   void listExamples3(List<String> vegetables){
// //     print(vegetables);
// //   }
//   // void setExamples() {
//   //   Set<String> names = {'Oliver', 'Juan', 'Maria'};
//   //   print(names);
//   //   names.add('Sofia');
//   //   print(names);
//   //   names.add('Oliver'); // no se agrega porque ya existe en el set.
//   //   print(names);
//   //   // names.
//   //   //last;  no se puede acceder a un elemento específico en un set, ya que no tiene un orden definido.
//   //   names.clear(); // elimina todos los elementos del set.
//   //   print(names);
//   //   names.contains('Oliver');
//   //   names.add('Oliver');
//   //   print(names);
//   //   print(names.contains('Oliver'));
//   //   if (names.contains('Oliver')) {
//   //     print('El set contiene a Oliver');
//   //   } else {
//   //     print('El set no contiene a Oliver');
//   //   }
//   // }



