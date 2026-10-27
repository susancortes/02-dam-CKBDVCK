import 'package:app_gastro/screens/splash_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DelfinesStoreApp());
}

class DelfinesStoreApp extends StatelessWidget {
  const DelfinesStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delfines Store',
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
