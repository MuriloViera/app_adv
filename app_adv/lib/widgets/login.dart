import './caixaInput.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _usuarioController = TextEditingController();
  var _senhaController = TextEditingController();
  var _fromId = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: this._fromId,
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                CaixaInput('Usuario', this._usuarioController, false),
                CaixaInput('Senha', this._senhaController, true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
