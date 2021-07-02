import 'dart:convert';

ProdutoModel produtoModelFromJson(String str) =>
    ProdutoModel.fromJson(json.decode(str));

String produtoModelToJson(ProdutoModel data) => json.encode(data.toJson());

class ProdutoModel {
  ProdutoModel({this.produtos});

  List<Produto> produtos;

  factory ProdutoModel.fromJson(Map<String, dynamic> json) => ProdutoModel(
        produtos: List<Produto>.from(
            json["produtos"].map((x) => Produto.fromJson(x))),
      );

  Map<String, dynamic> toJson() =>
      {"produtos": List<dynamic>.from(produtos.map((x) => x.toJson()))};
}

class Produto {
  Produto({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
  });

  int id;
  String title;
  double price;
  String description;
  String category;
  String image;

  factory Produto.fromJson(Map<String, dynamic> json) => Produto(
        id: json["id"],
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        category: json["category"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
      };

  @override
  String toString() {
    return "$id $title $price $description $category $image\n";
  }
}
