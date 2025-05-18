import 'package:flutter/material.dart';
import 'package:habito_plus/screens/perfil.dart';

import 'adicionar_habido.dart';
import 'historico.dart';
import 'home.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  int _paginaSelecionada = 0;

  final List<Widget> _paginas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Habito plus',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      // body: _paginas[_paginaSelecionada],
      body: Padding(
        padding: EdgeInsets.only(top: 40,),
        child: IndexedStack(
          index: _paginaSelecionada,
          children: [
            Home(),
            Historico(),
            Perfil()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _paginaSelecionada,
        onTap: (index) {
          setState(() {
            _paginaSelecionada = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'Historico'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil'
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AdicionarHabido())
          );
        },
      ),
    );
  }
}
