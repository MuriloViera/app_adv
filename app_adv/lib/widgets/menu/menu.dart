import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'gaveta.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Gaveta(),
        drawerEnableOpenDragGesture: false,
        appBar: AppBar(
          title: Text(
            'MENU',
            style: Theme.of(context).appBarTheme.textTheme.headline1,
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 180,
            ),
            Center(
              child: Text(
                'Felipe, Silveira & Mengali',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 80),
              child: Text(
                'Advogados Associados',
                style: Theme.of(context).textTheme.headline3,
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Telefone'),
            BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Email'),
          ],
        ));
  }
}
