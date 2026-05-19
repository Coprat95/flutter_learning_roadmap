class Product {

// parámetros que queremos encontrar
  final String? title;
  final double price; 
  final String? description;
  final String? brand;
  Product({ this.title ,  required this.price, this.description,  this.brand});

  factory Product.fromJson(Map<String,dynamic>json ){
    return Product(
      title: json ['title'], 
      price: json ['price'],
      description: json ['description'],
      brand: json ['brand']);
  }



  
}