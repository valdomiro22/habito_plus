import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:habito_plus/screens/adicionar_habido.dart';

void main() {
  testWidgets(
    'verifica se os elementos do formulario estao presentes',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: AdicionarHabido()));

      expect(find.byKey(const Key('textFieldHamito')), findsOneWidget);
      expect(find.byKey(const Key('dropDownButtonFrequencia')), findsOneWidget);
      expect(find.byKey(const Key('buttomSalbar')), findsOneWidget);
    }
  );
}