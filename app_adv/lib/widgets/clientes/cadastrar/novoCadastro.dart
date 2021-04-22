import 'package:flutter/material.dart';

class NovoCadastro extends StatelessWidget {
  final Function cadastrarNovoCliente;
  final String label;
  final String pergunta;
  NovoCadastro(this.cadastrarNovoCliente, this.label, this.pergunta);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(this.label),
      content: Text(this.pergunta),
      actions: [
        TextButton(onPressed: cadastrarNovoCliente, child: Text('SIM')),
        TextButton(
            onPressed: () =>
                Navigator.popUntil(context, ModalRoute.withName('/menu')),
            child: Text('Não'))
      ],
    );
  }
}
