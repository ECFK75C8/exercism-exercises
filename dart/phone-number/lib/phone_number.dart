class PhoneNumber {
  bool checkValidPosition(String num) =>
      (int.parse(num[0]) > 1 && int.parse(num[3]) > 1);

  String clean(String number) {
    if (number.contains(RegExp(r'[^\w .()+-]')))
      throw FormatException('Invalid number');

    var newNumber = number.split(RegExp(r'[A-Za-z .()+-]')).join();

    if (newNumber.length == 11 &&
        newNumber.startsWith('1') &&
        checkValidPosition(newNumber.substring(1))) {
      return newNumber.substring(1);
    } else if (newNumber.length == 10 && checkValidPosition(newNumber)) {
      return newNumber;
    } else
      throw FormatException('invalid number');
  }
}