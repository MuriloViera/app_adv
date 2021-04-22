import 'package:flutter/material.dart';
import '../../gaveta.dart';
import 'cliente.dart';

class ClientesCadastrados extends StatefulWidget {
  @override
  _ClientesCadastradosState createState() => _ClientesCadastradosState();
}

class _ClientesCadastradosState extends State<ClientesCadastrados> {
  String id = '123456';
  var args;
  @override
  Widget build(BuildContext context) {
    setState(() {
      args = ModalRoute.of(context).settings.arguments;
      print(args);
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Clientes Cadastrados.',
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),
      drawer: Gaveta(args['admin']),
      body: ListView(
        children: [
          Cliente('Marcio', '12345678', this.id),
          Cliente('Marcio', '12345678', this.id),
          Cliente('Marcio', '12345678', this.id),
          Cliente('Marcio', '12345678', this.id),
          Cliente('Marcio', '12345678', this.id),
          Cliente('Marcio', '12345678', this.id),
        ],
      ),
    );
  }
}
