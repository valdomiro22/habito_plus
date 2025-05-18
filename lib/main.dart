import 'package:flutter/material.dart';
import 'package:habito_plus/screens/default_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habito plus',
      home: DefaultScreen(),
      debugShowCheckedModeBanner: false,

    );
  }
}
