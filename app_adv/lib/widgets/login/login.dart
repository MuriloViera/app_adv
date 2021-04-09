import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';

import '../caixaInput.dart';
import '../dica.dart';
import '../falha.dart';
import 'package:flutter/material.dart';
//Imports necessários

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //Variaveis Utilizadas
  var _usuarioController = TextEditingController();
  var _senhaController = TextEditingController();
  var _fromId = GlobalKey<FormState>();
  int _indexSelecionado = 0;
  bool _admin;
  bool biometria = false;

  //Variavel Para autenticação com ID.
  final LocalAuthentication _localAuthentication = LocalAuthentication();

  //Defininfo se há biometria disponível
  @override
  initState() {
    print('initState');
    super.initState();
    verificar();
  }

  //Funções Para o Uso do fingerPrint.
  Future<bool> _isBiometricAvailable() async {
    bool isAvailable = await _localAuthentication.canCheckBiometrics;
    return isAvailable;
  }

  Future<void> _getListOfBiometricTypes() async {
    List<BiometricType> listOfBiometrics =
        await _localAuthentication.getAvailableBiometrics();
  }

  Future<void> _authenticateUser(BuildContext ctx) async {
    bool isAuthenticated = await _localAuthentication.authenticate(
      localizedReason: "Use a biometria para entrar no sistema",
      biometricOnly: true,
      androidAuthStrings: AndroidAuthMessages(
        biometricRequiredTitle: 'Coloque Sua Digital',
        signInTitle: 'Coloque Sua Digital',
        biometricNotRecognized: 'Tente Novamnete',
        biometricSuccess: 'Seja Bem Vindo',
        biometricHint: '',
        cancelButton: 'Cancelar',
      ),
    );
    if (this._usuarioController.text == 'marcio' && isAuthenticated) {
      this._admin = true;
      Navigator.pushNamed(context, '/menu', arguments: this._admin);
    }
  }

  //Logar Com Biometria
  autenticarUsuario(BuildContext ctx) async {
    print('autenticar usuario');

    try {
      if (await _isBiometricAvailable()) {
        await _getListOfBiometricTypes();
        await _authenticateUser(ctx);
      }
    } catch (e) {
      showModalBottomSheet(
          context: ctx,
          builder: (_) {
            return GestureDetector(
              child: Falha(
                  'ERRO AO LOGAR',
                  'Certifique-se que há digital cadastrada em seu aparelho Tente a senha caso contrário',
                  1.0,
                  400.0),
              onTap: () {},
              behavior: HitTestBehavior.opaque,
            );
          });
    }
  }

  //Função Para Validar Login
  void _validarLogin(BuildContext ctx) {
    if (this._usuarioController.text == 'marcio' &&
            this._senhaController.text == 'gabriel' ||
        this._usuarioController.text == 'murilo' &&
            this._senhaController.text == 'vieira') {
      this._admin = true;
      Navigator.pushNamed(context, '/menu', arguments: this._admin);
    } else if (this._usuarioController.text == 'teste' &&
        this._senhaController.text == 'teste') {
      this._admin = false;
      Navigator.pushNamed(context, '/menu', arguments: this._admin);
    } else {
      //Mostrar a tela de Erro ao logor, como esqueceu sua seha.
      showModalBottomSheet(
          context: ctx,
          builder: (_) {
            return GestureDetector(
              child: Falha(
                  'ERRO AO LOGAR', 'Usario ou Senha Errados !', 1.0, 300.0),
              onTap: () {},
              behavior: HitTestBehavior.opaque,
            );
          });
    }
  }

  //Função para utilizar bottomNavigati0on
  void _itemPressionado(int index) {
    setState(() {
      _indexSelecionado = index;
      if (index == 1) {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dica(
                  "Dica de Login: ", 'Utilizar o Usuario e senha de cadastro');
            });
      }
    });
  }

  //Função Para verificar se há biometria disponível.
  verificar() async {
    if (await _isBiometricAvailable()) {
      setState(() {
        this.biometria = true;
      });
    } else {
      setState(() {
        this.biometria = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'LOGIN',
            style: Theme.of(context).appBarTheme.textTheme.headline1,
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: this._fromId,
            child: Container(
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        height: 5,
                        width: 160,
                        color: Color.fromRGBO(176, 158, 80, 0.9),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Icon(
                          Icons.account_balance,
                          color: Color.fromRGBO(176, 158, 80, 0.9),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        height: 5,
                        width: 160,
                        color: Color.fromRGBO(176, 158, 80, 0.9),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Text(
                      'Felipe, Silveira & Mengali',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CaixaInput('Usuario', this._usuarioController, false,
                      'Entre com usuario'),
                  CaixaInput('Senha', this._senhaController, true,
                      'entre com a senha'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      (this.biometria)
                          ? TextButton(
                              onPressed: () => this.autenticarUsuario(context),
                              child: Text('Logar Com Impressão Digital'))
                          : SizedBox(
                              height: 0,
                            ),
                      Container(
                        margin: EdgeInsets.all(25),
                        height: 80,
                        width: 80,
                        child: FloatingActionButton(
                          child: Icon(Icons.login),
                          onPressed: () => this._validarLogin(context),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.question_answer), label: 'Sobre'),
            BottomNavigationBarItem(
                icon: Icon(Icons.lightbulb_outline_rounded), label: 'Dica'),
          ],
          currentIndex: this._indexSelecionado,
          onTap: this._itemPressionado,
        ));
  }
}
