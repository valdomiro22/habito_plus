import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:habito_plus/screens/adicionar_habido.dart';
import 'package:habito_plus/screens/default_screen.dart';

void main() {
  testWidgets(
    'FloatingActionButton navega para a tela de adicionar hábito',
    (WidgetTester tester) async {

      await tester.pumpWidget(
        MaterialApp(
          initialRoute: '/', // Começa direto na tela de adicionar hábito
          routes: {
            '/': (context) => const DefaultScreen(key: Key('telaDefault')),
            '/add_habito': (context) => const AdicionarHabido(key: Key('telaAdicionarHabito')),
          },
        ),
      );

      expect(find.byKey(const Key('fabAddHabito')), findsOneWidget);

      await tester.tap(find.byKey(const Key('fabAddHabito')));
      await tester.pumpAndSettle();  // Espera a navegação e termina
      expect(find.byKey(const Key('telaAdicionarHabito')), findsOneWidget);

      await tester.tap(find.byKey(const Key('buttomSalbar')));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('telaDefault')), findsOneWidget);
    }
  );
}