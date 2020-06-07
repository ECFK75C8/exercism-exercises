class Allergies {
  Map<String, int> _allergens = {
    'eggs': 1,
    'peanuts': 2,
    'shellfish': 4,
    'strawberries': 8,
    'tomatoes': 16,
    'chocolate': 32,
    'pollen': 64,
    'cats': 128
  };

  bool allergicTo(String allergen, int score) =>
    score & _allergens[allergen] == _allergens[allergen];

  List<String> list(int score) =>
      _allergens
      .keys
      .where((allergen) => allergicTo(allergen, score))
      .toList();
}
