import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key('telaHome'),
      body: Center(
        child: Text(
          'Home',
        ),
      )
    );
  }
}
