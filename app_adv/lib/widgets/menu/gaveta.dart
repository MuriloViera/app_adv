import 'package:app_adv/widgets/menu/listaGaveta.dart';
import 'package:flutter/material.dart';

class Gaveta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      height: 5,
                      width: 90,
                      color: Color.fromRGBO(176, 158, 80, 0.9),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Icon(
                        Icons.account_balance,
                        color: Color.fromRGBO(176, 158, 80, 0.9),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      height: 5,
                      width: 90,
                      color: Color.fromRGBO(176, 158, 80, 0.9),
                    ),
                  ],
                ),
                Text('Felipe, Silveira & Mengali',
                    style: Theme.of(context).textTheme.headline3),
              ],
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).textTheme.headline6.color,
            ),
          ),
          ListaGaveta('Cadastrar'),
          ListaGaveta('Cadastrar'),
          ListaGaveta('Cadastrar'),
        ],
      ),
    );
  }
}
