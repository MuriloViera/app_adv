import 'package:app_adv/widgets/listaGaveta.dart';
import 'package:flutter/material.dart';

import 'menu/listTitleMenu.dart';

class Gaveta extends StatelessWidget {
  bool _admin;
  Gaveta(this._admin);
  List<Map<String, Object>> lista;
  final menuUser = ['Consultar Processos', 'Consultar Datas de Audiências'];
  final menuAdmin = [
    {'titulo': 'Cadastrar Cliente', 'route': '/cadastrarcliente'},
    {'titulo': 'Clientes Cadastrados', 'route': '/clientescadastrados'},
  ];

  @override
  Widget build(BuildContext context) {
    this.lista = (this._admin) ? menuAdmin : menuUser;
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
          ...lista.map((e) => ListaGaveta(
              e['titulo'], () => Navigator.pushNamed(context, e['route']))),
          ListTitleMenu(),
        ],
      ),
    );
  }
}
