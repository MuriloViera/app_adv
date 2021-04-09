import 'package:flutter/material.dart';

import '../caixaInput.dart';

class LoginComBiometria extends StatefulWidget {
  final TextEditingController _usuarioController;
  final TextEditingController _senhaController;
  final Function _validarLogin;
  bool _biometria = false;
  LoginComBiometria(
      this._usuarioController, this._senhaController, this._validarLogin);

  @override
  _LoginComBiometriaState createState() => _LoginComBiometriaState();
}

class _LoginComBiometriaState extends State<LoginComBiometria> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CaixaInput('Usuario', this.widget._usuarioController, false,
            'Entre com usuario'),
        Row(
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    this.widget._biometria = true;
                  });
                },
                child: Text('Logar Com Senha', style: TextStyle(fontSize: 12))),
            TextButton(
                onPressed: () {},
                child: Text('Logar Com Impressão Digital',
                    style: TextStyle(fontSize: 12))),
          ],
        ),
        (this.widget._biometria)
            ? CaixaInput('Senha', this.widget._senhaController, true,
                'entre com a senha')
            : Container(),
        (this.widget._biometria)
            ? Container(
                margin: EdgeInsets.all(25),
                height: 80,
                width: 80,
                child: FloatingActionButton(
                  child: Icon(Icons.login),
                  onPressed: () => this.widget._validarLogin(context),
                ),
              )
            : Container()
      ],
    );
  }
}
