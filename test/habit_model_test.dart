import 'package:flutter_test/flutter_test.dart';
import 'package:habito_plus/enums/frequencia.dart';
import 'package:habito_plus/models/hobito.dart';

void main() {
  test('Habito - toMap e fromMap devem manter o dados corretos', () {
    final habitoOriginal = Habito(
      id: 3,
      nome: 'Camila',
      frequencia: Frequencia.diario,
      datasConcluidas: ['55/84/1458', '35/14/2018']
    );

    final habitoParaMap = habitoOriginal.toMap();
    final habitoReconstruido = Habito.fromMap(habitoParaMap);

    expect(habitoReconstruido.id, habitoOriginal.id);
    expect(habitoReconstruido.nome, habitoOriginal.nome);
    expect(habitoReconstruido.frequencia, habitoOriginal.frequencia);
    expect(habitoReconstruido.datasConcluidas, habitoOriginal.datasConcluidas);
  });
}