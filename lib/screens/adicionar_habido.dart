import 'dart:math';

import 'package:flutter/material.dart';
import 'package:habito_plus/utils/string_utils.dart';

import '../enums/frequencia.dart';

class AdicionarHabido extends StatefulWidget {
  const AdicionarHabido({super.key});

  @override
  State<AdicionarHabido> createState() => _AdicionarHabidoState();
}

class _AdicionarHabidoState extends State<AdicionarHabido> {
  Frequencia? _frenquanciaSelecionada;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              'Adicionar Habido',
              style: TextStyle()
          ),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                TextField(
                  key: const Key('textFieldHamito'),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16,),
                DropdownButton(
                  key: const Key('dropDownButtonFrequencia'),
                  isExpanded: true,
                  value: _frenquanciaSelecionada,
                  hint: Text('Escolha uma opão'),
                  items: Frequencia.values.map((frequencia) {
                    return DropdownMenuItem(
                      value: frequencia,
                      child: Text(capitalize(frequencia.name)),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _frenquanciaSelecionada = value;
                    });
                  },
                ),
                ElevatedButton(
                  key: const Key('buttomSalbar'),
                  child: Text('Salvar'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        )
    );
  }

}
