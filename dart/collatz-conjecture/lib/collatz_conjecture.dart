class CollatzConjecture {

  int steps(int n){
    if (n > 0){
      for (int i = 0; ; i++){
        if (n == 1) return i;
        n = (n % 2 == 0)? n ~/ 2 : 3 * n + 1;
      }
    }
    throw new ArgumentError('Only postive values are allowed');
  }
}