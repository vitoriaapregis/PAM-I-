import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quitanda/app.dart';
import 'package:quitanda/repositorio/repositorio_produto.dart';
import 'package:quitanda/vm/catalogo.dart';

class AppProvedor extends StatelessWidget {
  const AppProvedor({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Catalogo.create(RepositorioProduto()),
      ], 
      child: const Aplicacao(),
      );
  }
}