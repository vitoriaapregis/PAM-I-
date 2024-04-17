import 'package:aula1504/repositorio_produto.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final repositorio = RepositorioProduto();
    final produtos = repositorio.select();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista da quitanda"),
        backgroundColor: const Color.fromARGB(255, 252, 98, 195),
      ),
      //ListView.Builder cria uma lista baseada em conteudo dinamico
      //
      //o atributo itemCount, estabelece quantos items devem ter na ListView e deve estar associada
      //a quantidade real de elementos que se deseja apresentar
      //
      //o atributo itemBuilder, estabelece uma receita para criar um Widget que represente o item da Lista
      //ela será invocada tantas vezes quanto for estabelecido no atributo itemCount

      body: ListView.builder(
        padding: const EdgeInsets.all(4),
        itemCount: produtos.length,
        itemBuilder: (context, index) => Item(
          //produtos [index] retorna o produto que se encontra
          //na posição estabelecida pela variavel index
          nome: produtos[index].nome,
          categoria: produtos[index].categoria,
        ),
      ),
      // body: ListView(
      //   padding: const EdgeInsets.all(12),
      //   children: const [
      //     Item(nome: "Abacate", categoria: "Fruta"),
      //     Item(nome: "abacaxi", categoria: "Fruta"),
      //     Item(nome: "Maça", categoria: "fruta"),
      //     Item(nome: "Pera", categoria: "fruta"),
      //     Item(nome: "Uva", categoria: "fruta"),
      //     Item(nome: "Pepino", categoria: "Verdura"),
      //     Item(nome: "Alface", categoria: "Hortaliça"),
      //     Item(nome: "Tomate", categoria: "Fruta"),
      //   ],
      // ),
    );
  }
}

class Item extends StatelessWidget {
  final String nome;
  final String categoria;

  const Item({
    super.key,
    required this.nome,
    required this.categoria,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(4),
            child: Icon(
              Icons.store,
              size: 40,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nome,
                style: textTheme.bodyLarge,
              ),
              Text(
                categoria,
                style: textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
