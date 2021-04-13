import 'package:flutter/material.dart';

class NovoCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Cadastrar Um Novo Cliente'),
      content: Text('Deseja Cadastrar um Novo Cliente ?'),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text('SIM')),
        TextButton(
            onPressed: () =>
                Navigator.popUntil(context, ModalRoute.withName('/menu')),
            child: Text('Não'))
      ],
    );
  }
}
