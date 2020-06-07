extension on double {
  double get earthSeconds => this * SpaceAge.earthYearInSec;
}

final durations = const {
  'Earth': 1.0,
  'Mercury': 0.2408467,
  'Venus': 0.615197226,
  'Mars': 1.8808158,
  'Jupiter': 11.862615,
  'Saturn': 29.447498,
  'Uranus': 84.016846,
  'Neptune': 164.79132
};

class SpaceAge {
  static const earthYearInSec = 31557600;

  double age({String planet, int seconds}) => double.parse(
      (seconds / durations[planet].earthSeconds).toStringAsFixed(2));
}