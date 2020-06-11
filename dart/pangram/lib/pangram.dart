class Pangram {
  var alphabets = 'abcdefghijklmnopqrstuvwxyz'.split('');

  bool isPangram(String sentence) => sentence
      .toLowerCase()
      .replaceAll(RegExp(r'[^a-z]'), '')
      .split('')
      .toSet()
      .containsAll(alphabets);
}
