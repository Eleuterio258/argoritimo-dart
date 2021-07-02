import 'dart:io';

void maini() {
  var fahrenheit = [0, 44, 24, 24, 9, 9, 2, -8, -10, 12];
  fahrenheit.add(4);

  print(fahrenheit.removeAt(5));
  print(fahrenheit.elementAt(5));

  var sum = 0;
  fahrenheit.forEach((item) => sum += item);

  print("Total:" + sum.toString());
}

void main() {
  List<Pessoa> pessoas = [];

  Pessoa p1 =
      Pessoa(nome: "catia", email: "catia@gmail.com", numero: "860675700");

  Pessoa p2 = Pessoa(
      nome: "Eleuterio", email: "Eleuterio@gmail.com", numero: "860675700");

  Pessoa p3 =
      Pessoa(nome: "Fatima", email: "Fatima@gmail.com", numero: "860675700");
  pessoas.add(p1);
  pessoas.add(p2);
  pessoas.add(p3);
  print("ANTES");
  pessoas.forEach((element) => stdout
      .writeln(element.nome + "|" + element.email + "|" + element.numero));
  print("\n\n\n");
  var ultimo = pessoas.length - 1;
  var inicio = ultimo - ultimo;

  pessoas.removeAt(ultimo);
  pessoas.removeAt(inicio);
  pessoas.insert(inicio, p3);
  pessoas.insert(inicio, p3);
  pessoas.insertAll(ultimo, {p3, p1, p2});
  pessoas.addAll({p1});
  var t = pessoas.every((element) => element.nome == "Eleuterio");
  var b = pessoas.where((element) => element.nome == "Eleuterio");
  var l = pessoas.elementAt(ultimo);
  var f = pessoas.firstWhere((element) => element.nome == "Eleuterio");

  print(" b $b");
  print(" l ${l.numero}");
  print(" f $f");
  var p = pessoas.asMap();

  print("DEPOIS");
  pessoas.forEach((element) => stdout
      .writeln(element.nome + "|" + element.email + "|" + element.numero));

  print("LISTA");

  p.forEach((key, value) => stdout.writeln(
      "Numero:${key}||${value.nome}||${value.numero}||${value.email}"));
}

class Pessoa {
  final nome;
  final email;
  final numero;

  Pessoa({this.nome, this.email, this.numero});

  @override
  String toString() {
    return nome;
  }
}
