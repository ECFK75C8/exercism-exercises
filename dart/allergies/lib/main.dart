import './allergies.dart';

void main() {
  print(Allergies().allergicTo('peanuts', 5)); //false
  print(Allergies().list(20)); //[shellfish, tomatoes]
}