import 'package:flutter/material.dart';

class Cliente extends StatelessWidget {
  final String nome;
  final String telefone;
  final String id;
  bool admin = true;
  Cliente(this.nome, this.telefone, this.id);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromRGBO(176, 158, 80, 0.9), width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: Card(
        color: Colors.white,
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Nome: ${this.nome}',
                style: TextStyle(
                    fontSize: 23,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontFamily: 'OpenSans'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Telefone: ${this.telefone}',
                style: TextStyle(
                    fontSize: 23,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontFamily: 'OpenSans'),
              ),
            ),
            Row(
              children: [
                Flexible(
                    child: TextButton(
                        onPressed: () => Navigator.pushNamed(
                            context, '/verdadosclientes',
                            arguments: this.id),
                        child: Text(
                          'Ver Dados',
                          style: TextStyle(color: Colors.amber),
                        ))),
                TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/processos',
                        arguments: {'id': this.id, 'admin': true}),
                    child: Text(
                      'Processos',
                      style: TextStyle(color: Colors.amber),
                    )),
                Flexible(
                    child: TextButton(
                        onPressed: () => Navigator.pushNamed(
                            context, '/cadastrarDataAudiencia',
                            arguments: this.id),
                        child: Text(
                          'Cadastrar Data Audiencia',
                          style: TextStyle(color: Colors.amber),
                        ))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
