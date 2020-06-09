extension on Iterable {
  String joinOrNull() => isNotEmpty ? join() : null;
}

class Raindrops {
  final _soundMap = const {3: 'Pling', 5: 'Plang', 7: 'Plong'};

  String convert(int number) =>
      _soundMap.keys
          .where((factor) => number % factor == 0)
          .map((key) => _soundMap[key])
          .joinOrNull() ??
      number.toString();
}