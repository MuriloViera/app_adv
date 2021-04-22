import 'package:flutter/material.dart';

class Andamento extends StatelessWidget {
  final String data;
  final String descricao;
  Andamento(this.data, this.descricao);
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
                '${this.data}',
                style: TextStyle(
                    fontSize: 23,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontFamily: 'OpenSans'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '${this.descricao}',
                style: TextStyle(
                    fontSize: 23,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontFamily: 'OpenSans'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
