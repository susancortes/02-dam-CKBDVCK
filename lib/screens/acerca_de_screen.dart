import 'package:flutter/material.dart';
 
/// Pestaña Acerca de. Por ahora es un cascarón: Dev 7 agrega el texto
/// creativo del proyecto y los nombres de los 8 integrantes.
class AcercaDeScreen extends StatelessWidget {
  const AcercaDeScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Aquí irá la información del equipo')),
    );
  }
}