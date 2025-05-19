import 'package:flutter/widgets.dart';
import 'package:habito_plus/models/hobito.dart';
import 'package:hive/hive.dart';

class HabitoProvider with ChangeNotifier {
  final Box<Habito> _habitosBox = Hive.box<Habito>('habitosBox');

  List<Habito> get habitos => _habitosBox.values.toList();

  void adicionarHabito(Habito habito) {
    _habitosBox.add(habito);
    notifyListeners();
  }

  void editarHabito(Habito habito) {
    // habito.save();
    notifyListeners();
  }

  void deletarHabito(Habito habito) {
    // habito.delete();
    notifyListeners();
  }
}