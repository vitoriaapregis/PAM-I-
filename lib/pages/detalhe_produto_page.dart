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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: veioParametro ? body(context, arg as Produto) : bodyEmpty(),
    );
  }

  Widget bodyEmpty() {
    return const Center(
      child: Text("Não foi recebido nenhum parâmetro"),
    );
  }

  Widget body(BuildContext context, Produto produto) {
    final temaTexto = Theme.of(context).textTheme;

    return Column(
      children: [
        Center(
          child: Image.network(
            produto.foto,
            width: 200,
            height: 200,
          ),
        ),
        Text(
          produto.nome,
          style: temaTexto.titleLarge,
        ),
        Text(
          produto.categoria,
          style: temaTexto.bodyLarge,
        ),
        Text(
          produto.estoque.toString(),
          style: temaTexto.bodyMedium,
        ),
        Text(
          formataMoeda(produto.preco),
          style: temaTexto.bodyLarge,
        ),
      ],
    );
  }
}
