import 'package:flutter/material.dart';

class ListaGaveta extends StatelessWidget {
  final String _titulo;
  ListaGaveta(this._titulo);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        this._titulo,
        style: Theme.of(context).textTheme.headline6,
      ),
      onTap: () {},
    );
  }
}
