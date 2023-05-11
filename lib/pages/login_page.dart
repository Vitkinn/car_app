import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/cars_list');
              },
              icon: const Icon(Icons.account_circle),
              label: const Text('Acessar')),
        ),
      ),
    );
  }
}
