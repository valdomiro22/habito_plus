import 'package:habito_plus/enums/frequencia.dart';

class Habito {
  final int id;
  final String nome;
  final Frequencia frequencia;
  final List<String> datasConcluidas;

  Habito({
    required this.id,
    required this.nome,
    required this.frequencia,
    required this.datasConcluidas
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'frequencia': frequencia,
      'datasConcluidas': datasConcluidas
    };
  }

  factory Habito.fromMap(Map<String, dynamic> map) {
    return Habito(
      id: map['id'],
      nome: map['nome'],
      frequencia: map['frequencia'],
      datasConcluidas: List<String>.from(map['datasConcluidas'])
    );
  }
}