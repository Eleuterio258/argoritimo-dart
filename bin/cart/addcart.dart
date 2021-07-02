import 'Produto.dart';
import 'produtos.dart';

List<Produto> carinho = [];
main() {
  var p1 = Produto(
      price: produtos[1]['price'],
      id: produtos[1]['id'],
      title: produtos[1]['title'],
      category: produtos[1]['category'],
      description: produtos[1]['description'],
      image: produtos[1]['image']);
  var p2 = Produto(
      price: produtos[1]['price'],
      id: produtos[1]['id'],
      title: produtos[1]['title'],
      category: produtos[1]['category'],
      description: produtos[1]['description'],
      image: produtos[1]['image']);
  addcart(p1, 10);
  addcart(p2, 5);
  imprimir(carinho);
}


void imprimir(List<Produto> carinho) {
  carinho.forEach((e) {
    print(e);
  });
  print(b);
}

void addcart(Produto produto, int quantidade) {
  carinho.add(produto);

  setTotal(produto: produto, quantidade: quantidade);
}

double setTotal({Produto produto, int quantidade}) {
  var total = produto.price * quantidade;
  return total;
}
