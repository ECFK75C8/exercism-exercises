import './orientation.dart';
import './position.dart';

class Robot {
  Position position;
  Orientation orientation;
  Robot(this.position, this.orientation);

  int get index => orientation.index;

  var cordinates = [
    Orientation.north,
    Orientation.east,
    Orientation.south,
    Orientation.west
  ];

  void moveRight() => orientation =
      (index == cordinates.length - 1) ? cordinates[0] : cordinates[index + 1];

  void moveLeft() => orientation =
      (index == 0) ? cordinates[cordinates.length - 1] : cordinates[index - 1];

  void advance() {
    if (index == 0)
      position.y++;
    else if (index == 1)
      position.x++;
    else if (index == 2)
      position.y--;
    else
      position.x--;
  }

  void move(String commands) {
    for (var i = 0; i < commands.length; i++) {
      if (commands[i] == 'A')
        advance();
      else if (commands[i] == 'R')
        moveRight();
      else if (commands[i] == 'L')
        moveLeft();
      else
        throw ArgumentError('Unspported command');
    }
  }
}