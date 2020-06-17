extension on List<List<String>> {
  List<String> get toSingleList =>
      List.generate(length, (row) => this[row].join());
}

extension on List<String> {
  List<List<String>> get to2DList =>
      List.generate(length, (row) => this[row].split(''));
}

class Minesweeper {
  final List<String> mines;

  Minesweeper([this.mines]);

  int get rows => mines.length;
  int get cols => mines[0].length;

  int countNeighbor(int x, int y) {
    var total = 0;

    if (mines[x][y] == '*')
      return -1; //this is a redundant check. Only required if the map method is used.

    for (var xoffset = -1; xoffset <= 1; xoffset++) {
      for (var yoffset = -1; yoffset <= 1; yoffset++) {
        var i = x + xoffset;
        var j = y + yoffset;

        if (i > -1 && i < rows && j > -1 && j < cols) {
          var neighbor = mines[i][j];
          if (neighbor == '*') {
            total++;
          }
        }
      }
    }
    return total;
  }

  List<String> get annoted {
    //Using map
    // return mines.to2DList
    //     .asMap()
    //     .entries
    //     .map((rows) {
    //       return rows.value.asMap().entries.map((cols) {
    //         var count = countNeighbor(rows.key, cols.key);
    //         return (count == -1)
    //             ? cols.value
    //             : (count == 0) ? ' ' : count.toString();
    //       }).toList();
    //     })
    //     .toList()
    //     .toSingleList;

    //using for loop which is more readable and understandable.
    var newMines = mines.to2DList;
    for (var i = 0; i < rows; i++) {
      for (var j = 0; j < cols; j++) {
        if (newMines[i][j] != '*') {
          var count = countNeighbor(i, j);
          newMines[i][j] = (count == 0) ? ' ' : count.toString();
        }
      }
    }

    return newMines.toSingleList;
  }
}
