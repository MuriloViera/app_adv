import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'SOBRE',
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  'Aplciativo Para Advocacia',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              Divider(color: Theme.of(context).textTheme.headline2.color),
              Container(
                margin: EdgeInsets.all(20),
                child: CircleAvatar(
                    radius: 140,
                    backgroundImage: AssetImage(
                      'assets/images/minhafoto.jpg',
                    )),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Text('Márcio Gabriel G. Mengali',
                    style: Theme.of(context).textTheme.headline2),
              ),
              Divider(color: Theme.of(context).textTheme.headline2.color),
              Container(
                margin: EdgeInsets.all(20),
                child: CircleAvatar(
                    radius: 140,
                    backgroundImage: AssetImage(
                      'assets/images/murilo.jpg',
                    )),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Text('Murilo Vieira Pizzamiglio',
                    style: Theme.of(context).textTheme.headline2),
              ),
              Divider(color: Theme.of(context).textTheme.headline2.color),
              Container(
                  margin: EdgeInsets.all(40),
                  child: Text(
                      'Aplicativo desenvolvido para auxilio de escritório de advocacia. Na comunicação Cliente - Advogado.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'OpenSans'))),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.home), onPressed: () => Navigator.pop(context)),
    );
  }
}
