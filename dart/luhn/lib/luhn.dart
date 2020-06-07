class Luhn {
  int doubleValue(String n) {
    int int_n = int.parse(n);
    int_n += int_n;
    return (int_n > 9) ? int_n - 9 : int_n;
  }

  bool valid(String arg) {
    var match = RegExp(r'^[0-9]+( [0-9]+)*$').hasMatch(arg);

    if (match && arg.length > 1) {
      var values = arg.split(' ').join().split('');
      return (values.reversed
        .toList()
        .asMap()
        .entries
        .map((entry) => ((entry.key + 1) % 2 == 0) // double only the second digits.
            ? doubleValue(entry.value)
            : int.parse(entry.value))
        .reduce((total, values) => total + values)) % 10 == 0;
    }
    return false;
  }
}
