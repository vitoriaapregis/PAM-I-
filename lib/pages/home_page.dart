import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quitanda/componentes/produto_item_list.dart';
import 'package:quitanda/vm/catalogo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //na linha abaixo a gente esta pedindo um catalogo gerenciado
    //para provider. A partir de agora, toda mudança na Ctalogo
    //vai causar uma atualização aqui
    final catalogo = Provider.of<Catalogo>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(
              context,
              "/carrinho",
            ),
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
          IconButton(
            onPressed: () => Navigator.pushNamed(
              context,
              "/perfil",
            ),
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: catalogo.produtos.length,
        itemBuilder: (context, index) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Navigator.pushNamed(
            context,
            "/detail",
            arguments: catalogo.produtos[index].id,
          ),
          child: ProdutoItemList(
            produto: catalogo.produtos[index],
          ),
        ),
        separatorBuilder: (context, index) => const Divider(),
        padding: const EdgeInsets.all(8),
      ),
    );
  }
}
