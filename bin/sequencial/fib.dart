import 'dart:io';

void main() {
  int n1 = 0, n2 = 1, n3, i, limite = 10;
  stdout.write('${n1},${n2}');

  for (i = 2; i < limite; ++i) {
    n3 = n1 + n2;
    stdout.write(',${n3}');
    n1 = n2;
    n2 = n3;
  }
}
