import 'package:flutter/material.dart';
 
/// Pestaña Home. Por ahora es un cascarón: Dev 4 agrega el título y el FAB,
/// y Dev 6 conecta la lista de recetas con FutureBuilder.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Aquí irá la lista de recetas')),
    );
  }
}