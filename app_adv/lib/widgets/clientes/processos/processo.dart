import 'package:flutter/material.dart';

class Processo extends StatelessWidget {
  final String numProc;
  final String autor;
  final String reu;
  final String tipo;
  final String idProc;
  final bool admin;
  Processo(
      this.numProc, this.autor, this.reu, this.tipo, this.idProc, this.admin);
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
              child: FittedBox(
                child: Text(
                  'Número: ${this.numProc}',
                  style: TextStyle(
                      fontSize: 23,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      fontFamily: 'OpenSans'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Autor: ${this.autor}',
                style: TextStyle(
                    fontSize: 23,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontFamily: 'OpenSans'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Réu: ${this.reu}',
                style: TextStyle(
                    fontSize: 23,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontFamily: 'OpenSans'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Ação: ${this.tipo}',
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
                            context, '/andamentos',
                            arguments: this.idProc),
                        child: Text(
                          'Ver Andamento',
                          style: TextStyle(color: Colors.amber),
                        ))),
                TextButton(
                    onPressed: this.admin
                        ? () => Navigator.pushNamed(
                            context, '/cadastrarandamento',
                            arguments: this.idProc)
                        : null,
                    child: Text(
                      'Cadastrar Andamento',
                      style: TextStyle(color: Colors.amber),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
