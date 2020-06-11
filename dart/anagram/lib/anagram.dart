extension on String {
  bool sameAs(String word) {
    var sortedAnagram = toLowerCase().split('')..sort();
    var sortedWord = word.toLowerCase().split('')..sort();
    return sortedAnagram.join() == sortedWord.join();
  }
}

class Anagram {
  List<String> findAnagrams(String word, List<String> anagrams) => anagrams
      .where((anagram) => anagram.toLowerCase() != word.toLowerCase())
      .where((anagram) => anagram.sameAs(word))
      .toList();
}
