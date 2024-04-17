import 'package:aula1504/produto.dart';

class RepositorioProduto {
  List<Produto> select() {
    return <Produto>[
      Produto(nome: "Abacate", categoria: "Fruta"),
      Produto(nome: "abacaxi", categoria: "Fruta"),
      Produto(nome: "Uva", categoria: "Fruta"),
      Produto(nome: "Pera", categoria: "Fruta"),
      Produto(nome: "Manga", categoria: "Fruta"),
      Produto(nome: "Melancia", categoria: "Fruta"),
      Produto(nome: "Tomate", categoria: "Fruta"),
      Produto(nome: "Alface", categoria: "Hortaliça"),
      Produto(nome: "Rucula", categoria: "Verdura")
    ];
  }
}
