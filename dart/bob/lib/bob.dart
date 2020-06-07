extension on String {
  bool get isCaps => contains(RegExp(r'[A-Z]')) && (this == toUpperCase());

  bool get isQuestion => endsWith('?');

  bool get isGibberish =>
      this.isEmpty;
      // (!csontains(RegExp(r'\w')) && contains(RegExp(r'[\t\n\s\r]')));
}

class Bob {
  String response(String text) => Answer(text).answer;
}

//Solution is based on polymorphism.
abstract class Answer {
  factory Answer(String arg) {
    arg = arg.trim();

    if (arg.isGibberish) {
      return Gibberish();
    } else if (arg.isQuestion && !arg.isCaps) {
      return Question();
    } else if (arg.isCaps && !arg.isQuestion) {
      return Yell();
    } else if (arg.isCaps && arg.isQuestion) {
      return YellQuestion();
    } else
      return Default();
  }

  String get answer => '';
}

class Default implements Answer {
  @override
  String get answer => 'Whatever.';
}

class Yell implements Answer {
  @override
  String get answer => 'Whoa, chill out!';
}

class YellQuestion implements Answer {
  @override
  String get answer => 'Calm down, I know what I\'m doing!';
}

class Question implements Answer {
  @override
  String get answer => 'Sure.';
}

class Gibberish implements Answer {
  @override
  String get answer => 'Fine. Be that way!';
}