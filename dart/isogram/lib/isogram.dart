class Isogram {
  bool isIsogram(String arg) {
    var map = <String, int>{};

    arg.toLowerCase().split('').forEach((letter) {
      if (letter != '-' && letter != ' ')
        (map.containsKey(letter)) ? map[letter] += 1 : map[letter] = 1;
    });
    
    return map.values.every((element) => element == 1);
  }
}