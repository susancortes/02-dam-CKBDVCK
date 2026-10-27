import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Delfines Store')),
      body: const Center(
        child: Text(
          'Bienvenido a Delfines Store',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
