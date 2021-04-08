import 'package:flutter/material.dart';

import 'gaveta.dart';


class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: Gaveta(),
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text(
          'MENU',
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),

      
    );
  }
}
