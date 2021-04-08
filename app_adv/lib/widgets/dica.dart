import 'package:flutter/material.dart';

class Dica extends StatelessWidget {
  final String _titulo;
  final String _mensagem;
  Dica(this._titulo, this._mensagem);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(this._titulo),
      content: Text(this._mensagem),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context), child: Text('Fechar'))
      ],
    );
  }
}
