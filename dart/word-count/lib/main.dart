import './word_count.dart';

void main() {
  print(WordCount().countWords('Joe can\'t tell between \'large\' and large.'));
  print(WordCount().countWords('First: don\'t laugh. Then: don\'t cry.'));
  print(WordCount().countWords(
      'That\'s the password: \'PASSWORD 123\'!", cried the Special Agent.\nSo I fled.'));
}
