import 'package:flutter/material.dart';
import 'package:quitanda/entidade/produto.dart';
import 'package:quitanda/util/moeda.dart';

class DetalheProdutoPage extends StatelessWidget {
  const DetalheProdutoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)?.settings.arguments;

    final veioParametro = arg != null;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhe do produto"),
        backgroundColor: Theme.of(context)
        .colorScheme
        .inversePrimary,
      ),
      body: veioParametro ? 
      body(arg as Produto) : 
      bodyEmpty(),
    );
  }

  Widget bodyEmpty() {
    return const Center(
      child: Text("Não foi recebido nenhum parâmetro"),
    );
  }

  Widget body(Produto produto) {
    return Column(
      children: [
        Image.network(
          produto.foto,
          width: 200,
          height: 200,
        ),
        Text(produto.nome),
        Text(produto.categoria),
        Text(produto.estoque.toString()),
        Text(formataMoeda(produto.preco)),
      ],
    );
  }
}
