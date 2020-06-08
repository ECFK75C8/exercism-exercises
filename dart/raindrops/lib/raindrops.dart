extension on Iterable {
  String joinOrNull() => isEmpty ? null : join();
}

class Raindrops {
  Map<int, String> _soundMap = {3: 'Pling', 5: 'Plang', 7: 'Plong'};

  String convert(int number) =>
      _soundMap.keys
          .where((factor) => number % factor == 0)
          .map((key) => _soundMap[key])
          .joinOrNull() ??
      number.toString();
}