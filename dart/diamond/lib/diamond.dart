class Diamond {
  String alphabets = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

  List<String> rows(String arg) {
    arg = arg.toUpperCase();
    if (arg == 'A')
      return <String>['A']; // If args is A return just A in a list

    int index = alphabets.indexOf(arg); //get index of letter
    var result =
        _buildRows(index); //build top part of row list and store in result.
    result.addAll(_reversedRows(
        result)); // reverse the top part of row list to get buttom part and append to result.
    return result; //return diamond kata .(oo).
  }

  List<String> _buildRows(int index) {
    //declare and intantiate row list with the first element being A.
    List<String> _rows = [' ' * index + alphabets[0] + ' ' * index];

    //declare and intatiate trailing and leading spaces;
    int outterSpace = index - 1; // starting from B with index = index - 1.
    int innerSpace =
        1; // inner space starts from 1 space and increases by 2 spaces for each itteration(check line 23).

    for (int i = 1; i <= index; i++) {
      _rows.add(' ' * outterSpace +
          alphabets[i] +
          ' ' * innerSpace +
          alphabets[i] +
          ' ' * outterSpace);
      innerSpace += 2;
      outterSpace--;
    }
    return _rows;
  }

  List<String> _reversedRows(List<String> args) {
    var newArgs = args.reversed.toList()..removeAt(0);
    return newArgs;
  }
}
