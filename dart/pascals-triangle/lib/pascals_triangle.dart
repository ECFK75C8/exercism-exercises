class PascalsTriangle {
  var prevRow = <int>[];
  int getElement(int index) => prevRow[index - 1] + prevRow[index];

  List<int> generateInnerRows(int row) {
    var innerRow = List.generate(row + 1,
        (index) => (index == 0 || index == row) ? 1 : getElement(index));
    prevRow = [...innerRow];
    return innerRow;
  }

  List<List<int>> rows(int numberOfRows) =>
      List.generate(numberOfRows, (row) => generateInnerRows(row));
}