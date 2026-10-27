import 'package:flutter/material.dart';
 
/// Dev 6 conecta la lista de recetas con FutureBuilder.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
 
  // Muestra el mensaje del botón flotante
  void _mostrarMensaje(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('El mapa se está abriendo...'),
      ),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // botón flotante
      floatingActionButton: FloatingActionButton(
        onPressed: () => _mostrarMensaje(context),
        backgroundColor: const Color.fromARGB(255, 229, 50, 136),
        child: const Icon(Icons.map, color: Colors.white),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // título principal
              const Text(
                'Platillos Ancestrales de Quintana Roo',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 229, 50, 136),
                ),
              ),
              const SizedBox(height: 8),
              // texto introductorio
              const Text(
                'Descubre los sabores que han pasado de generación en '
                'generación en la península de Yucatán. Explora recetas '
                'tradicionales de la cocina maya y llévalas a tu mesa.',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 80, 80, 80),
                ),
              ),
              const SizedBox(height: 16),
             
              const Expanded(
                child: Center(child: Text('Aquí irá la lista de recetas')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}