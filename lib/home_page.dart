import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista da quitanda"),
        backgroundColor: const Color.fromARGB(255, 254, 22, 169),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const [
          Item(nome: "Abacate", categoria: "Fruta"),
          Item(nome: "abacaxi", categoria: "Fruta"),
          Item(nome: "Maça", categoria: "fruta"),
          Item(nome: "Pera", categoria: "fruta"),
          Item(nome: "Uva", categoria: "fruta"),
          Item(nome: "Pepino", categoria: "Verdura"),
          Item(nome: "Alface", categoria: "Verdura"),
          Item(nome: "Tomate", categoria: "Fruta"),
        ],
      ),
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
    return Row(
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
            Text(nome),
            Text(categoria),
          ],
        ),
      ],
    );
  }
}
