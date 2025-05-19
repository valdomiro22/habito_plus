import 'package:flutter/material.dart';
import 'package:habito_plus/screens/adicionar_habido.dart';
import 'package:habito_plus/screens/default_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Habito plus',
      initialRoute: '/',
      routes: {
        '/': (_) => DefaultScreen(),
        '/add_habito': (_) => AdicionarHabido(),
      },
    );
  }
}
