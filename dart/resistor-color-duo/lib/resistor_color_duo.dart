class ResistorColorDuo {
  // Put your code here
  List<String> _colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white'
  ];

  int value(List<String> colors){
    String num1 = _colors.indexOf(colors[0]).toString();
    String num2 = _colors.indexOf(colors[1]).toString();
    String num = <String>[num1, num2].join();
    return int.tryParse(num); 
  }
}