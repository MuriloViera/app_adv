import 'package:flutter/material.dart';

import '../../gaveta.dart';
import './andamento.dart';

class Andamentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Andamentos.',
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),
      drawer: Gaveta(true),
      body: ListView(
        children: [
          Andamento('22/04/2021', 'qualquer coisa'),
        ],
      ),
    );
  }
}
