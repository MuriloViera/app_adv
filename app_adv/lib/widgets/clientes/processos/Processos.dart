import 'package:app_adv/widgets/clientes/cadastrados/Cliente.dart';
import 'package:app_adv/widgets/clientes/processos/processo.dart';
import 'package:app_adv/widgets/gaveta.dart';
import 'package:flutter/material.dart';

class Processos extends StatefulWidget {
  @override
  _ProcessosState createState() => _ProcessosState();
}

class _ProcessosState extends State<Processos> {
  var args;

  @override
  Widget build(BuildContext context) {
    setState(() {
      args = ModalRoute.of(context).settings.arguments;
      print(args);
    });
    print(args['admin']);
    var administrador = (args['admin']) ? true : false;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Processos.',
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),
      drawer: Gaveta(args['admin']),
      body: ListView(
        children: [
          Processo('12345-896', 'Márcio Gabriel Gonçalves Mengali',
              'Murilo Vieira', 'Cível', '1234', administrador),
          Processo('12345-896', 'Márcio Gabriel Gonçalves Mengali',
              'Murilo Vieira', 'Cível', '1234', administrador),
          Processo('12345-896', 'Márcio Gabriel Gonçalves Mengali',
              'Murilo Vieira', 'Cível', '1234', administrador),
          Processo('12345-896', 'Márcio Gabriel Gonçalves Mengali',
              'Murilo Vieira', 'Cível', '1234', administrador),
        ],
      ),
    );
  }
}
