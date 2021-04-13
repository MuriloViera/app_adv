import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../falha.dart';
import '../gaveta.dart';

//Função para utilizar bottomNavigati0on

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _indexSelecionado = 0;
  void _customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('could not Launch');
    }
  }

  //Função para utilizar bottomNavigati0on
  void _itemPressionado(int index) {
    setState(() {
      _indexSelecionado = index;
      if (index == 0) {
        this._customLaunch('tel: 19 36411726');
      } else if (index == 1) {
        showModalBottomSheet(
            context: context,
            builder: (_) {
              return GestureDetector(
                child: Falha(
                    'ENDEREÇO',
                    'Rua: Saldanha Marinho 536.\nCep:13880-000\nVargem Grande Do Sul - Sp',
                    0.0,
                    370.00),
                onTap: () {},
                behavior: HitTestBehavior.opaque,
              );
            });
      } else if (index == 2) {
        this._customLaunch(
            'mailto:fsmadv.associados@gmail.com?subject=Escreva o titulo&body=Escreva sua mensagem');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool _admin = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        drawer: Gaveta(_admin),
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
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on), label: 'Localização'),
            BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Email'),
          ],
          currentIndex: this._indexSelecionado,
          onTap: this._itemPressionado,
        ));
  }
}
