class Hamming {
  int distance(String arg1, String arg2) {
    if (arg1.isEmpty ^ arg2.isEmpty)
      throw ArgumentError('no strand must be empty');
    if (arg1.length != arg2.length)
      throw ArgumentError('left and right strands must be of equal length');

    return arg1
        .split('')
        .asMap()
        .entries
        .map((entry) => entry.value == arg2[entry.key] ? 0 : 1)
        .fold(0, (prev, element) => prev + element);
  }
}