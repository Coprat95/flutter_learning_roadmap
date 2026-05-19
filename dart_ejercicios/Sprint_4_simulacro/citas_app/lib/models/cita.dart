class Cita {

//  "id": 1,
//       "quote": "Your heart is the size of an ocean. Go find yourself in its hidden depths.",
//       "author"
final int? id;
final String? quote;
final String author;
Cita({this.id,  this.quote,  required this.author});

factory Cita.fromJson(Map<String,dynamic> json) {
  return Cita(id: json ['id'], quote: json ['quote'], author: json ['author']);
}


}