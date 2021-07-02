import 'dart:io';

void main() {
  int n1 = 0, n2 = 1, n3, limite = 40;

  stdout.write('${n1}, ${n2}');

  for (var i = 0; i < limite; i++) {
    n3 = n1 + n2;
    stdout.write(', ${n3}');

    n1 = n2;
    n2 = n3;
  }
}
