import 'secret_handshake.dart';

void main() {
  print(SecretHandshake().commands(3));
  print(SecretHandshake().commands(31));
  print(SecretHandshake().commands(16));
}