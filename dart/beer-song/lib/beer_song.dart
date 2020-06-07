class BeerSong {

  List<String> recite(int st, int itr) {
    List<String> result = [];

    for (int i = 0; i < itr; i++) {
      if(st == 0){
        result.add('No more bottles of beer on the wall, no more bottles of beer.');
        result.add('Go to the store and buy some more, 99 bottles of beer on the wall.');
        break;
      }else if(st == 1){
        result.add('1 bottle of beer on the wall, ${st--} bottle of beer.');
        result.add('Take it down and pass it around, no more bottles of beer on the wall.');
        if(itr > 1)result.add('');
      }else{
        result.add('$st bottles of beer on the wall, ${st--} bottles of beer.');
        result.add('Take one down and pass it around, $st ${st == 1? 'bottle' : 'bottles'} of beer on the wall.');
        if(itr > 1)result.add('');
      }
    }

    return result;
  }
}