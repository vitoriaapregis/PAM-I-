import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final ColorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Scaffold(
      body: Center(
        child: SizedBox,
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.min,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: Text(
                "Quitanda",
               style: textTheme.headlineLarge?.copyWith(
                color: colorSheme.primary,
               ),
              ),
            ),
            TextField(
              controller: usuarioController,
              decoration: const InputDecoration(
                 labelText: "Senha",
              ),
                 obscureText: true,
            autocorrect: false, 
            ),
            
          ],
        ),
      ),
    );
  }
}
