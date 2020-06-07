import 'package:matching_brackets/matching_brackets.dart';

void main(){
  var checkMatch = [
    '([)',
    '([{}])',
    ']()',];

    checkMatch.forEach((item){
      print(MatchingBrackets().isPaired(item));
    });
}