import 'dart:io';

void main() {
  var fat = 1;
  var numero = 10;
  for (var i = 1; i < numero; i++) {
    fat = fat * i;
  }
  stdout.write(fat);
}
