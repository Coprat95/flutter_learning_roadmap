class Recipe {
  final String name;
  final String cuisine;
  final String difficulty;
  final double caloriesPerServing;

  Recipe({
    required this.name,
    required this.cuisine,
    required this.difficulty,
    required this.caloriesPerServing,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      name: json['name'],
      cuisine: json['cuisine'],
      difficulty: json['difficulty'],
      caloriesPerServing: (json['caloriesPerServing'] as num).toDouble() ,
    );
  }
}
