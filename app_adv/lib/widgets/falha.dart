import 'package:flutter/material.dart';

class Falha extends StatelessWidget {
  final String _titulo;
  final String _subTitulo;
  final double _opacidade;
  final double _height;
  Falha(this._titulo, this._subTitulo, this._opacidade, this._height);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: this._height,
        width: 300,
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              this._titulo,
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              this._subTitulo,
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            Opacity(
                opacity: this._opacidade,
                child: TextButton(
                    onPressed: () {}, child: Text('Esqueceu Sua Senha ?'))),
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
