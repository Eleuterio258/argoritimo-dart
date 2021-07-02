import 'dart:io';

void main() {
  var n = 10;
  stdout.write(fib(n));
}

int fib(int n) {
  if (n <= 1) return n;
  return fib(n - 1) + fib(n - 2);
}
