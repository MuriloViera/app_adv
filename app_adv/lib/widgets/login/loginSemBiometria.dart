import 'package:flutter/material.dart';

import '../caixaInput.dart';

class LoginSemBiometria extends StatelessWidget {
  final TextEditingController _usuarioController;
  final TextEditingController _senhaController;
  final Function _validarLogin;
  LoginSemBiometria(
      this._usuarioController, this._senhaController, this._validarLogin);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CaixaInput(
            'Usuario', this._usuarioController, false, 'Entre com usuario'),
        CaixaInput('Senha', this._senhaController, true, 'entre com a senha'),
        Container(
          margin: EdgeInsets.all(25),
          height: 80,
          width: 80,
          child: FloatingActionButton(
            child: Icon(Icons.login),
            onPressed: () => this._validarLogin(context),
          ),
        )
      ],
    );
  }
}
