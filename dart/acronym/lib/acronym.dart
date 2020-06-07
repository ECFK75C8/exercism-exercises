class Acronym {
  String abbreviate(String sentence) => sentence
      .split(RegExp(r"[^A-Za-z']"))
      .where((word) => word.isNotEmpty)
      .map((word) => word[0].toUpperCase())
      .join();
}
