extension GenerateCode on String {
  List<String> get codes => this
      .split(r'')
      .reversed
      .toList()
      .asMap()
      .entries
      .generatecode
      .filterZero
      .noNull
      .checkReverse;
}

extension GetIndividualCode on Iterable<MapEntry<int, String>>{
  /**
   * [1, 0, 1, 1]
   * genrate values like below from the list above.
   * [1, 0, 100, 1000]
   */
  Iterable<String> get generatecode => 
      map((entry) => (entry.value == '0') 
          ? entry.value 
          : '1${'0' * entry.key}');
}

extension Filter on Iterable {
  /**
   * The method [genrateCode] may return iterable with 0.
   * This getter method filters the list to eliminate such zero value.
   */
  Iterable<String> get filterZero => 
      where((dynamic item) => item != '0') as Iterable<String>;

  /**
   * Any value greater than [10000] will result in a null
   * value when map to the codes:
   *     Map<String, String> _map = {
   *      '1': 'wink',
   *      '10': 'double blink',
   *      '100': 'close your eyes',
   *      '1000': 'jump'
   *     };
   * Prevents null values on the final map.
   */
  List<String> get noNull =>
      where((dynamic item) => int.parse(item.toString()) <= 10000).toList()
          as List<String>;
}

extension ChecktoReverse on List<String> {
  List<String> get checkReverse {
    if (contains('10000')) {
      remove('10000');
      return reversed.toList();
    }
    return this;
  }
}
