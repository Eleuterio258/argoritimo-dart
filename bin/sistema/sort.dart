import 'dart:io';

void main() {
  var fahrenheit = [0, 44, 24, 24, 9, 9, 2, -8, -10, 12];

  for (var i = 0; i < fahrenheit.length - 1; i++) {
    for (var j = 0; j < fahrenheit.length - (1 + i); j++) {
      if (fahrenheit[j] < fahrenheit[j + 1]) {
        var aux = fahrenheit[j + 1];
        fahrenheit[j + 1] = fahrenheit[j];
        fahrenheit[j] = aux;
      }
    }
  }
  // print("\n\n");
  // print("DECRESCENTE");
  // for (var i = 0; i < fahrenheit.length; i++) {
  //   print(fahrenheit[i]);
  // }

  for (var i = 0; i < fahrenheit.length - 1; i++) {
    for (var j = 0; j < fahrenheit.length - (1 + i); j++) {
      if (fahrenheit[j] > fahrenheit[j + 1]) {
        var aux = fahrenheit[j + 1];
        fahrenheit[j + 1] = fahrenheit[j];
        fahrenheit[j] = aux;
      }
    }
  }
  // print("\n\n");
  // print("CRESCENTE");
  // for (var i = 0; i < fahrenheit.length; i++) {
  //   print(fahrenheit[i]);
  // }

  var nome = "CATIA";

  //print(nome[nome.length - 1]);

  var numeros = [];
  for (var i = 0; i < 10; i++) {
    stdout.write("DIGITE O VALOR: ");
  }
  numeros.forEach((element) => print(element / 2));
}
