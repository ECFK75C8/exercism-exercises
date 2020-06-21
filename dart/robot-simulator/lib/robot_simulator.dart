import './orientation.dart';
import './position.dart';

class Robot {
  Position position;
  Orientation orientation;
  Robot(this.position, this.orientation);

  int get index => orientation.index;

  void turnRight() => orientation = (index == Orientation.values.length - 1)
      ? Orientation.values.first
      : Orientation.values[index + 1];

  void turnLeft() => orientation =
      (index == 0) ? Orientation.values.last : Orientation.values[index - 1];

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
        turnRight();
      else if (commands[i] == 'L')
        turnLeft();
      else
        throw ArgumentError('Unspported command');
    }
  }
}
