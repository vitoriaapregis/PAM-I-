import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quitanda/entidade/usuario.dart';

class Auth extends ChangeNotifier {
  //Usuario? => significa que a
  //variavel aceita o tipo Usuarioou null
  Usuario? _usuario;
  bool _logado = false;
  DateTime? _logouEm;

  void login(String usuario, String senha) {
    if (usuario == "Vitoria Regis" && senha == "12345") {
      _usuario = Usuario(
          login: "admin",
          nome: "administrador",
          email: "admin@quitanda.com.br");

      _logouEm = DateTime.now();
      _logado = true;
      notifyListeners();
      return;
    }
    throw Exception("Credenciais inválidas!");
  }

  void logout() {
    _usuario = null;
    _logado = false;
    notifyListeners();
  }

  Usuario? get usuario => _usuario;
  bool get estaLogado => _logado;
  DateTime? get logouEm => _logouEm;

  static ChangeNotifierProvider<Auth> create() =>
      ChangeNotifierProvider(create: (_) => Auth());
}
