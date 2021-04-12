import 'package:app_adv/widgets/menu/gaveta.dart';
import 'package:flutter/material.dart';

import '../../caixaInput.dart';

class ClienteCadastrar extends StatefulWidget {
  @override
  _ClienteCadastrarState createState() => _ClienteCadastrarState();
}

class _ClienteCadastrarState extends State<ClienteCadastrar> {
  var _nomeController = TextEditingController();
  var _emailController = TextEditingController();
  var _telefoneController = TextEditingController();
  var _logradouroController = TextEditingController();
  var _logradouroNumeroController = TextEditingController();
  var _logradouroComplementoController = TextEditingController();
  var _cidadeController = TextEditingController();
  var _cepController = TextEditingController();
  var _ufController = TextEditingController();
  var _usuarioController = TextEditingController();
  var _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'CADASTRAR CLIENTE',
            style: Theme.of(context).appBarTheme.textTheme.headline1,
          ),
        ),
        drawer: Gaveta(true),
        body: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                SizedBox(height: 15),
                CaixaInput('Nome', this._nomeController, false,
                    'Entre com o nome do cliente'),
                CaixaInput('Telefone', this._telefoneController, false,
                    'Entre com o telefone do cliente'),
                CaixaInput('Email', this._emailController, false,
                    'Entre com o email do cliente'),
                Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    child: Text('Endereço',
                        style: Theme.of(context).textTheme.headline2)),
                Container(
                  height: 4,
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Color.fromRGBO(176, 158, 80, 1),
                ),
                CaixaInput('Logradouro', this._logradouroController, false,
                    'Entre com o logradouro do cliente'),
                Row(
                  children: [
                    Flexible(
                      child: CaixaInput(
                          'Numero',
                          this._logradouroNumeroController,
                          false,
                          'Entre com o número do logradouro'),
                    ),
                    Flexible(
                      child: CaixaInput(
                          'Complemento',
                          this._logradouroComplementoController,
                          false,
                          'Entre com o Complemento do logradouro'),
                    ),
                  ],
                ),
                CaixaInput('Cidade', this._cidadeController, false,
                    'Entre com o nome da cidade'),
                Row(
                  children: [
                    Flexible(
                      child: CaixaInput('Cep', this._cepController, false,
                          'Entre com o cep da cidade'),
                    ),
                    Flexible(
                      child: CaixaInput('UF', this._ufController, false,
                          'Entre com o UF(Estado)'),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    child: Text('Login',
                        style: Theme.of(context).textTheme.headline2)),
                Container(
                  height: 4,
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Color.fromRGBO(176, 158, 80, 1),
                ),
                CaixaInput('Usuário', this._usuarioController, false,
                    'Entre com o usuário de login do cliente'),
                CaixaInput('Senha', this._senhaController, true,
                    'Entre com a senha de login do cliente'),
              ],
            ),
          ),
        ));
  }
}
