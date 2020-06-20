extension on String {
  int get intValue => int.tryParse(this) ?? 10;

  bool get isValidString {
    if (length != 10)
      return false;
    else if (substring(length - 1).contains(RegExp(r'[^Xx\d]')))
      return false;
    else if (substring(0, length - 1).contains(RegExp(r'\D')))
      return false;
    else
      return true;
  }
}

bool isValid(String isbn) {
  isbn = isbn.replaceAll('-', '');
  if (!isbn.isValidString) return false;

  return isbn
              .split('')
              .asMap()
              .entries
              .map((entry) => (10 - entry.key) * entry.value.intValue)
              .fold<int>(0, (prev, element) => prev + element) %
          11 ==
      0;
}
