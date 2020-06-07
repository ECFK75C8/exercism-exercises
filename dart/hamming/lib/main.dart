import 'hamming.dart';

void main(){
  print(Hamming().distance('', '')); // 0
  print(Hamming().distance('GGACTGAAATCTG', 'GGACTGAAATCTG')); //0
  print(Hamming().distance('GGACGGATTCTG', 'AGGACGGATTCT')); //9
  print(Hamming().distance('', 'A')); // error.
}