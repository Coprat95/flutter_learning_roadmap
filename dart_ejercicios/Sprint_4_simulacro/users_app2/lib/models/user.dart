

class User {
// Foto (leading con Image.network())
// firstName + lastName como título
// email como subtítulo

// DetailScreen:

// Foto grande
// Nombre completo
// email
// age
// phone

final String image ;
final String firstName;
final String lastName;
final String maidenName;
final String fullName;
final String email;
final int age;
final String phone;

User({ required this.image, required this.firstName,
 required this.lastName, required this.maidenName, required this.email, required this.age, required this.phone, required this.fullName});

factory User.fromJson (Map<String,dynamic> json) {
  return  User(image: json ['image'], firstName:  json ['firstName'], 
  lastName: json ['lastName'], maidenName: json ['maidenName'], 
  email: json ['email'], age: json ['age'], phone: json  ['phone'],
  fullName: '${json['firstName']} ${json['lastName']}');

}
}