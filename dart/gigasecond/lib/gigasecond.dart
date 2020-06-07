import 'dart:math';

DateTime add(DateTime dateTime) =>
    dateTime.add(Duration(seconds: pow(10, 9).toInt()));
