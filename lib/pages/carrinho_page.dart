import 'package:flutter/material.dart';

class CarrinhoPage extends StatelessWidget {
  const CarrinhoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrinho"),
        backgroundColor: const Color.fromARGB(255, 255, 68, 199),
      ),
    );
  }
}
