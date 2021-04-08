import 'package:flutter/material.dart';

class Falha extends StatelessWidget {
  final String _titulo;
  final String _subTitulo;
  Falha(this._titulo, this._subTitulo);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: 300,
        width: 300,
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              this._titulo,
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              this._subTitulo,
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton(onPressed: () {}, child: Text('Esqueceu Sua Senha ?')),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  child: Icon(Icons.keyboard_return_outlined),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
