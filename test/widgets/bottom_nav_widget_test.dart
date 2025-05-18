import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:habito_plus/screens/default_screen.dart';

void main() {
  testWidgets('Navegacao com BottomNavigationBar', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: DefaultScreen(),));
    
    final item = tester.widget<BottomNavigationBar>(find.byKey(const Key('bottomNavBar')));
    expect(item.items.length, 3);

    expect(find.byKey(const Key('telaHome')), findsOneWidget);

    await tester.tap(find.byKey(const Key('menuHistorico')));
    await tester.pump();
    expect(find.byKey(const Key('telaHistorico')), findsOneWidget);

    await tester.tap(find.byKey(const Key('menuPerfil')));
    await tester.pump();
    expect(find.byKey(const Key('telaPerfil')), findsOneWidget);
  });
}