import 'dart:math';

class ArmstrongNumbers {
  int length(int number){
    if (number < 0) throw new ArgumentError('Out of range.');
    else if (number == 0) return 1;
    else return (log(number) / ln10).floor() + 1;
  }

  bool isArmstrongNumber(int number){
    if (number == 0) return true;

    var len = length(number);

    int sum = number.toString().split('')
      .fold(0, (prev, element) => 
        prev + pow(int.parse(element), len).toInt());

    return number == sum;
  }  
}