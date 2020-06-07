import 'phone_number.dart';

void main() {
  var numbers = [
    '123456789',
    '22234567890',
    '12234567890',
    '321234567890',
    '123-abc-7890',
    '123-@:!-7890',
    '(023) 456-7890',
    '(123) 456-7890',
    '(223) 056-7890',
    '(223) 156-7890',
    '1 (223) 156-7890',
    '1 (023) 456-7890',
    '1 (123) 456-7890',
    '1 (223) 056-7890',
    '+1 (223) 456-7890',
  ];

  for (var num in numbers) {
    try {
      print(PhoneNumber().clean(num));
    } on FormatException catch (e) {print(e.toString());}
  }
}
