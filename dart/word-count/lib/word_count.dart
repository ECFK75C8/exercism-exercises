extension on String {
  Iterable<String> get words => split(RegExp(r"[^\w']"))
      .where((element) => element.isNotEmpty)
      .map((word) => word.contains("'")
          ? word.contains(RegExp(r"\b'\b")) ? word : word.replaceAll("'", '')
          : word);
}

class WordCount {
  Map<String, int> countWords(String arg) =>
      arg.toLowerCase()
          .words.fold<Map<String, int>>(
          {},
          (result, word) => 
              result..update(word, (existing) => existing + 1, ifAbsent: () => 1));
}