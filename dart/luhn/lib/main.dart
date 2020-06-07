import './luhn.dart';

void main() {
  print(Luhn().valid('1')); 
  print(Luhn().valid('0000 0'));  // true
  print(Luhn().valid('055 444 285')); //true
  print(Luhn().valid('8273 1232 7352 0569')); //false
  print(Luhn().valid('055-444-285')); //false
  print(Luhn().valid('0889 d324 2312')); //false
}