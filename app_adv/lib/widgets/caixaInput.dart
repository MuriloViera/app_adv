import 'package:flutter/material.dart';

class CaixaInput extends StatelessWidget {
  final String label;
  final TextEditingController controlador;
  final bool senha;
  CaixaInput(this.label, this.controlador, this.senha);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        obscureText: this.senha,
        style: TextStyle(
          color: Theme.of(context).textTheme.headline6.color,
        ),
        controller: this.controlador,
        decoration: InputDecoration(
          fillColor: Theme.of(context).primaryColor,
          filled: true,
          labelText: this.label,
          labelStyle: Theme.of(context).textTheme.headline6,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
