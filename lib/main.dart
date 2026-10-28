import 'package:app_gastro/screens/splash_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const GastronomiaApp());
}

class GastronomiaApp extends StatelessWidget {
  const GastronomiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gastronomía',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 229, 50, 136),
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
