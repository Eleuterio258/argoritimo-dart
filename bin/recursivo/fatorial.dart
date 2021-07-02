import 'dart:io';

void main() {
  var calfatorial = fatorial(10);
  stdout.write(calfatorial);
}

int fatorial(int n) {
  if (n == 1) return 1;
  return fatorial(n - 1) * n;
}
