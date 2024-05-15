import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quitanda/util/moeda.dart';
import 'package:quitanda/vm/catalogo.dart';

class DetalheProdutoPage extends StatelessWidget {
  const DetalheProdutoPage({super.key});

  @override
  Widget build(BuildContext context) {
    //ModalRoute.of(context) Devolve a rota que
    //foi usada para chegar até aqui

    //ModalRoute.of(context)?.settings.arguments;
    //devolve o argunto (parametro) que foi passado
    //para essa tela se houver
    final arg = ModalRoute.of(context)?.settings.arguments;

    final veioParametro = arg != null;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhe do produto"),
        backgroundColor: const Color.fromARGB(255, 180, 68, 255),
      ),
      body: veioParametro ? body(context, arg as String) : bodyEmpty(),
    );
  }

  Widget bodyEmpty() {
    return const Center(
      child: Text("Não foi recebido nenhum parâmetro"),
    );
  }

  Widget body(BuildContext context, String idProduto) {
    final temaTexto = Theme.of(context).textTheme;

    final catalogo = Provider.of<Catalogo>(context);
    final produto = catalogo.findById(idProduto);

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
          produto.categoria,
          style: temaTexto.titleLarge,
        ),
        Text(
          produto.nome,
          style: temaTexto.titleMedium,
        ),
        Text("Estoque: ${produto.estoque}"),
        Text(formataMoeda(produto.preco)),
      ],
    );
  }
}
