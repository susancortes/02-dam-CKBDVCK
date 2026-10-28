import 'package:flutter/material.dart';

import 'package:app_gastro/models/receta.dart';
import 'package:app_gastro/services/receta_service.dart';
import 'package:app_gastro/widgets/receta_card.dart';

/// Dev 6 conecta el servicio de recetas (Dev 2) con la vista (Dev 3/4)
/// usando un FutureBuilder para mostrar la lista de RecetaCard (Dev 5).
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final RecetaService _recetaService = RecetaService();
  // Se asigna una sola vez para no volver a llamar a la API en cada build.
  late Future<List<Receta>> _futureRecetas;

  @override
  void initState() {
    super.initState();
    _futureRecetas = _recetaService.getRecetas();
  }

  // Muestra el mensaje del botón flotante
  void _mostrarMensaje(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('El mapa de los pueblos originarios se está abriendo....'),
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

              // lista de recetas con FutureBuilder
              Expanded(
                child: FutureBuilder<List<Receta>>(
                  future: _futureRecetas,
                  builder: (context, snapshot) {
                    // 1. Cargando
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    // 2. Error
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          'No se pudieron cargar las recetas.\n${snapshot.error}',
                          textAlign: TextAlign.center,
                        ),
                      );
                    }

                    // 3. Sin datos
                    final recetas = snapshot.data ?? [];
                    if (recetas.isEmpty) {
                      return const Center(
                        child: Text('No hay recetas disponibles'),
                      );
                    }

                    // 4. Lista deslizable
                    return ListView.separated(
                      itemCount: recetas.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 10),
                      itemBuilder: (context, index) {
                        return RecetaCard(receta: recetas[index]);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}