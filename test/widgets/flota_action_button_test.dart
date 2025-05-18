import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:habito_plus/screens/default_screen.dart';

void main() {
  testWidgets(
    'FloatingActionButton navega para a tela de adicionar hábito',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: DefaultScreen()));

      expect(find.byKey(const Key('fabAddHabito')), findsOneWidget);

      await tester.tap(find.byKey(const Key('fabAddHabito')));
      await tester.pumpAndSettle();  // Espera a navegação e termina

      expect(find.byKey(const Key('telaAdicionarHabito')), findsOneWidget);
    }
  );
}