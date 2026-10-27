import 'package:app_gastro/screens/acerca_de_screen.dart';
import 'package:app_gastro/screens/favoritos_screen.dart';
import 'package:app_gastro/screens/home_screen.dart';
import 'package:flutter/material.dart';
 
/// Pantalla principal: contiene el Scaffold base y la barra de navegación
/// inferior para cambiar entre Home, Favoritos y Acerca de.
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
 
  @override
  State<MainScreen> createState() => _MainScreenState();
}
 
class _MainScreenState extends State<MainScreen> {
  int _indiceActual = 0;
 
  // Agregar o reemplazar pantallas conforme las terminen los demás integrantes.
  final List<Widget> _pantallas = const [
    HomeScreen(),
    FavoritosScreen(),
    AcercaDeScreen(),
  ];
 
  void _cambiarPantalla(int indice) {
    setState(() {
      _indiceActual = indice;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _indiceActual, children: _pantallas),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceActual,
        onTap: _cambiarPantalla,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Acerca de'),
        ],
      ),
    );
  }
}
