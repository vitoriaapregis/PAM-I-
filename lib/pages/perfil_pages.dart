import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quitanda/util/data.dart';
import 'package:quitanda/vm/auth.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<Auth>(context);
    final usuario = auth.usuario;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
        backgroundColor: const Color.fromARGB(255, 255, 68, 202),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                usuarioData("Nome", usuario?.nome ?? ""),
                usuarioData("E-mail", usuario?.email ?? ""),
                usuarioData("Login", usuario?.login ?? ""),
              ],
            ),
            Text("Logado desde ${formataData(auth.logouEm ?? DateTime.now())}"),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  auth.logout();
                  Navigator.restorablePushNamedAndRemoveUntil(
                    context,
                    "/login",
                    (route) => false,
                  );
                },
                child: const Text("Sair"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget usuarioData(String label, String conteudo) {
    return Row(
      children: [
        SizedBox(
          width: 80,
          child: Text(label),
        ),
        Text(conteudo),
      ],
    );
  }
}
