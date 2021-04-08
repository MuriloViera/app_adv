import '../dica.dart';
import '../falha.dart';
import '../caixaInput.dart';
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

  //Função Para Validar Login
  void _validarLogin(BuildContext ctx) {
    if (this._usuarioController.text == 'marciogabriel1998@gmail.com' &&
        this._senhaController.text == 'gabriel') {
      Navigator.pushNamed(context, '/menu');
    } else {
      //Mostrar a tela de Erro ao logor, como esqueceu sua seha.
      showModalBottomSheet(
          context: ctx,
          builder: (_) {
            return GestureDetector(
              child: Falha('ERRO AO LOGAR', 'Usario ou Senha Errados !'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                      'Felipe Silveira & Mengali',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CaixaInput('Usuario', this._usuarioController, false),
                  CaixaInput('Senha', this._senhaController, true),
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
