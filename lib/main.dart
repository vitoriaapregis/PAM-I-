import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 31, 255, 240),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Meu primeiro app"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: const Padding(
          padding: EdgeInsets.all(12),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Programação"),
                Text("Aplicativos"),
                Text("Mobile"),
                Column(
                  children: [
                    Text("Sophia é linda"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("2H3"),
                        Text("2024"),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

void main() => runApp(const Aplicacao());
