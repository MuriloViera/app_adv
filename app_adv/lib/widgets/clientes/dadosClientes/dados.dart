import 'package:flutter/material.dart';

import '../../gaveta.dart';

class Dados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Cliente.',
            style: Theme.of(context).appBarTheme.textTheme.headline1,
          ),
        ),
        drawer: Gaveta(true),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: FittedBox(
                    child: Text(
                      'Márcio Gabriel Gonçalves Mengali',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: FittedBox(
                    child: Text(
                      '(19) 982784242',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: FittedBox(
                    child: Text(
                      'marciogabriel1998@gmail.com',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: FittedBox(
                      child: Row(
                    children: [
                      Text(
                        'Rua Saldanha Marinho',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          '544',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                    ],
                  )),
                ),
                SizedBox(
                  height: 0,
                  child: Padding(
                    padding: EdgeInsets.only(top: 18),
                    child: FittedBox(
                      child: Text(
                        'Complemento',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: FittedBox(
                      child: Row(
                    children: [
                      Text(
                        'Vargem Grande Do Sul',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          ' - SP',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                    ],
                  )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: FittedBox(
                    child: Text(
                      'Usuário: marcio',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
