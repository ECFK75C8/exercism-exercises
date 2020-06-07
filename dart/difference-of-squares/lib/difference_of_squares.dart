import 'dart:math';

class DifferenceOfSquares {
  //Square the sum of the numbers up to the given number.
  int squareOfSum(int n) {
    return pow((n * (n + 1) ~/ 2), 2).toInt();
  }

  // Sum the squares of the numbers up to the given number.
  int sumOfSquares(int n) {
    return n * (n + 1) * (2 * n + 1) ~/ 6;
  }

  // Subtract sum of squares from square of sums.
  int differenceOfSquares(int n) {
    return squareOfSum(n) - sumOfSquares(n);
  }
}
