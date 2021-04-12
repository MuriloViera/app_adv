import 'package:flutter/material.dart';

class ListaGaveta extends StatelessWidget {
  final String _titulo;
  final Function _trocarRota;
  ListaGaveta(this._titulo, this._trocarRota);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        this._titulo,
        style: Theme.of(context).textTheme.headline6,
      ),
      onTap: this._trocarRota,
    );
  }
}
