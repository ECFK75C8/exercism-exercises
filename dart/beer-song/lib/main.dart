import 'beer_song.dart';

void main(){
  BeerSong().recite(99, 100).forEach((item){
    print(item);
  });
}