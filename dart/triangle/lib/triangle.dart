extension on List<num> {
  bool get isTriangle =>
      every((element) => element > 0) &&
      elementAt(0) < (elementAt(1) + elementAt(2)) &&
      elementAt(1) < (elementAt(0) + elementAt(2)) &&
      elementAt(2) < (elementAt(0) + elementAt(1));
}

class Triangle {
  bool equilateral(num a, num b, num c) =>
      [a, b, c].isTriangle && {a, b, c}.length == 1;

  bool isosceles(num a, num b, num c) =>
      [a, b, c].isTriangle && {a, b, c}.length <= 2;

  bool scalene(num a, num b, num c) =>
      [a, b, c].isTriangle && {a, b, c}.length == 3;
}
