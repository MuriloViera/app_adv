import 'package:app_adv/widgets/menu/listaGaveta.dart';
import 'package:flutter/material.dart';

class Gaveta extends StatelessWidget {
  bool _admin;
  final menuUser = ['Consultar Processos', 'Consultar Datas de Audiências'];
  final menuAdmin = [
    'Cadastrar Cliente',
    'Cliente Cadastrados',
    'Cadastrar Processo',
    'Cadastrar Publicação',
    'Cadastrar Data de Audiencia'
  ];
  Gaveta(this._admin);
  @override
  Widget build(BuildContext context) {
    final menu = (this._admin) ? menuAdmin : menuUser;
    return Drawer(
      child: ListView(
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
          ...menu.map((titulo) => ListaGaveta(titulo)),
        ],
      ),
    );
  }
}
