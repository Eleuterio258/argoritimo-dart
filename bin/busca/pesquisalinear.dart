import 'dart:io';

void main() {
  List<int> cliente;
  stdout.write('DIGITA O VALOR: ');
  var valor = int.parse(stdin.readLineSync());
  cliente = [2, 7, 7, 0, 6, 5, 64, 34, 25, 12, 22, 11, 9, 6, 46, 8, 5, 4, 8];

  int busca(lista, elemento) {
    for (var i = 0; i < cliente.length; i++) {
      if (cliente[i] == elemento) {
        return i;
      }
    }
    return null;
  }

  var pesquisa = busca(cliente, valor);
  if (pesquisa == null) {
    stdout.write('O VALOR ${valor} NAO FOI ENCONTRADO');
  } else {
    stdout.write('O VALOR ${valor} FOI ENCONTRADO NA POSIÇÃO ${pesquisa}');
  }
}
