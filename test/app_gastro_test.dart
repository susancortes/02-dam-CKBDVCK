import 'package:app_gastro/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('muestra la pantalla de bienvenida', (tester) async {
    await tester.pumpWidget(const GastronomiaApp());

    expect(find.text('Gastronomía'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('navega a la pantalla principal después del splash', (
    tester,
  ) async {
    await tester.pumpWidget(const GastronomiaApp());
    await tester.pump(const Duration(seconds: 5));
    await tester.pump();

    expect(find.byType(BottomNavigationBar), findsOneWidget);
    expect(
      find.text('Platillos Ancestrales de Quintana Roo'),
      findsOneWidget,
    );
  });

  testWidgets('la barra inferior cambia entre las 3 pestañas', (tester) async {
    await tester.pumpWidget(const GastronomiaApp());
    await tester.pump(const Duration(seconds: 5));
    await tester.pump();

    await tester.tap(find.text('Favoritos'));
    await tester.pump();
    expect(find.text('Aquí se verán tus favoritos'), findsOneWidget);

    await tester.tap(find.text('Acerca de'));
    await tester.pump();
    expect(find.text('Aquí irá la información del equipo'), findsOneWidget);

    await tester.tap(find.text('Home'));
    await tester.pump();
    expect(
      find.text('Platillos Ancestrales de Quintana Roo'),
      findsOneWidget,
    );
  });
}