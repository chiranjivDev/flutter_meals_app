enum Complexity { simple, challenging, hard }

enum Affordability {
  affordable,
  pricey,
  luxurious,
}

class Meal {
  const Meal(
      {required this.id,
      required this.title,
      required this.categories,
      required this.ingredients,
      required this.steps,
      required this.duration,
      required this.imageUrl,
      required this.isGlutenFree,
      required this.isLactoseFree,
      required this.isVegan,
      required this.isVegetarian,
      required this.affordability,
      required this.complexity});

  final String id;
  final String title;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final String imageUrl;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final Complexity complexity;
  final Affordability affordability;
}
