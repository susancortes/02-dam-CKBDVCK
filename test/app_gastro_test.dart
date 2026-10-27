import 'package:app_gastro/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('muestra la pantalla de bienvenida', (tester) async {
    await tester.pumpWidget(const DelfinesStoreApp());

    expect(find.text('Delfines Store'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('navega a la pantalla principal después del splash', (
    tester,
  ) async {
    await tester.pumpWidget(const DelfinesStoreApp());
    await tester.pump(const Duration(seconds: 5));
    await tester.pumpAndSettle();

    expect(find.text('Bienvenido a Delfines Store'), findsOneWidget);
  });
}
