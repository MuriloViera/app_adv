import 'package:flutter/material.dart';

class CaixaInput extends StatelessWidget {
  final String label;
  final TextEditingController controlador;
  final bool senha;
  final String dica;
  CaixaInput(this.label, this.controlador, this.senha, this.dica);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
          textAlign: TextAlign.center,
          obscureText: this.senha,
          style: TextStyle(
            color: Theme.of(context).textTheme.headline6.color,
            decoration: TextDecoration.none,
          ),
          controller: this.controlador,
          decoration: InputDecoration(
            fillColor: Theme.of(context).primaryColor,
            filled: true,
            labelText: this.label,
            hintText: this.dica,
            labelStyle: Theme.of(context).textTheme.headline6,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Por Favor entre com os dados';
            } else {
              return null;
            }
          }),
    );
  }
}
