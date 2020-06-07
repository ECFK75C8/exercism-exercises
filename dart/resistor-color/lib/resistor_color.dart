class ResistorColor {
  // Put your code here
  List<String> colors = [
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

  int colorCode(String color){
    //check if the given color is in list (valid).
    if (colors.contains(color)){
      return colors.indexOf(color); //return index if color is valid.
    }

    return -1; //return -1 if not a valid colors.
  }
}
