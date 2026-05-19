class Data {
  final int id;
  final String images;

  Data({required this.id, 
         required this.images});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id:    json['id'],
      images: json ['images']  );}
}
