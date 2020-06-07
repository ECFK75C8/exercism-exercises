import 'space_age.dart';

void main(){
  print(SpaceAge().age(planet: 'Earth', seconds: 1000000000));
  print(SpaceAge().age(planet: 'Mercury', seconds: 2134835688));
  print(SpaceAge().age(planet: 'Venus', seconds: 189839836));
  print(SpaceAge().age(planet: 'Mars', seconds: 2129871239));
}