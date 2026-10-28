import 'package:flutter/material.dart';

class AcercaDeScreen extends StatelessWidget {
  const AcercaDeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              'App Gastronómica de cocina ancestral',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12),
            Text(
              'Esta aplicación presenta un catalogo que resalta la riqueza gastronómica proveniente de la cocina ancestral de Quintana Roo.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 10),
            Text(
              'Integrantes de nuestro equipo:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('1. Cortes Granda Susan Neftali'),
            Text('2. Ku Rodriguez Aragon Manuel'),
            Text('3. Carrera Flores Jarely Esmeralda'),
            Text('4. Boggiano Superlano Javier Alejandro'),
            Text('5. Kantun Mukul Jose Alejandro'),
            Text('6. Dominguez Gaona Yaninna Yaiza'),
          ],
        ),
      ),
    );
  }
}