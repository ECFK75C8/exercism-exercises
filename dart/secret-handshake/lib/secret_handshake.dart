import './utils/extensions.dart';

class SecretHandshake {
  Map<String, String> _map = {
    '1': 'wink',
    '10': 'double blink',
    '100': 'close your eyes',
    '1000': 'jump'
  };

  List<String> commands(int arg) {
    return arg
        .toRadixString(2)
        .codes.map((code) => _map[code])
        .toList();
  }
}
