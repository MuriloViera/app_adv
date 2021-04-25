import 'package:app_adv/datasAudiencia/datasAudiencia.dart';
import 'package:app_adv/sobre/sobre.dart';
import 'package:app_adv/widgets/clientes/andamento/andamentos.dart';
import 'package:app_adv/widgets/clientes/andamento/cadastrarAndamento.dart';
import 'package:app_adv/widgets/clientes/dataAudiencia/cadastrarData.dart';
import 'package:app_adv/widgets/clientes/processos/Processos.dart';

import '/widgets/clientes/cadastrados/clientesCadastrados.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'widgets/clientes/cadastrar/clientesCadastrar.dart';
import 'widgets/clientes/dadosClientes/dados.dart';
import 'widgets/login/login.dart';
import 'widgets/menu/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fsm Adv',
      //Definições de temas para o aplicativo
      theme: ThemeData(
          //Definições globais
          primaryColor: Colors.white,
          accentColor: Colors.white,
          scaffoldBackgroundColor: Color.fromRGBO(19, 25, 37, 1),
          fontFamily: 'OpenSans',
          //Definiçoes para se utilizar em textos. Text()
          textTheme: ThemeData.light().textTheme.copyWith(
                headline1: TextStyle(
                  fontFamily: 'Cinzel',
                  fontSize: 25,
                  color: Colors.white,
                ),
                headline2: TextStyle(
                  color: Color.fromRGBO(176, 158, 80, 0.9),
                  fontSize: 25,
                  fontFamily: 'Cinzel',
                ),
                headline3: TextStyle(
                  fontFamily: 'Cinzel',
                  fontSize: 20,
                  color: Colors.white,
                ),
                headline4: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
                headline5: TextStyle(
                  color: Color.fromRGBO(176, 158, 80, 0.9),
                ),
                headline6: TextStyle(
                  color: Color.fromRGBO(19, 25, 37, 1),
                ),
              ),
          // Definições de utilização para AppBar()
          appBarTheme: AppBarTheme(
              centerTitle: true,
              color: Color.fromRGBO(19, 25, 37, 1),
              iconTheme:
                  IconThemeData(color: Color.fromRGBO(176, 158, 80, 0.9)),
              textTheme: ThemeData.light().textTheme.copyWith(
                    headline1: TextStyle(
                      color: Color.fromRGBO(176, 158, 80, 0.9),
                      fontSize: 22,
                    ),
                  )),
          //Definições de bottom navigation;
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            unselectedIconTheme: IconThemeData(
              color: Colors.white,
              size: 40,
            ),
            unselectedItemColor: Colors.white,
            unselectedLabelStyle: TextStyle(
              fontSize: 15,
            ),
            backgroundColor: Color.fromRGBO(19, 25, 37, 1),
            selectedIconTheme: IconThemeData(color: Colors.white, size: 40),
            selectedLabelStyle: TextStyle(
              fontSize: 15,
            ),
            selectedItemColor: Colors.white,
          ),
          //Definições do Icon()
          iconTheme: IconThemeData(size: 50, color: Colors.white),
          //Definições para FloatActionButton()
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              foregroundColor: Color.fromRGBO(19, 25, 37, 1)),
          //Definições Para card
          cardTheme: CardTheme(
            color: Color.fromRGBO(19, 25, 37, 1),
          ),
          //Definições para textButton.
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  primary: Colors.amber, padding: EdgeInsets.all(30))),
          //Definição dos botoes elevados.
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
          )),
      //Definição de Rotas.
      routes: {
        '/menu': (context) => Menu(),
        '/cadastrarcliente': (context) => ClienteCadastrar(),
        '/clientescadastrados': (context) => ClientesCadastrados(),
        '/verdadosclientes': (context) => Dados(),
        '/processos': (context) => Processos(),
        '/andamentos': (context) => Andamentos(),
        '/cadastrarandamento': (context) => CadastrarAndamento(),
        '/cadastrarDataAudiencia': (context) => CadastrarData(),
        '/verdataaudiencia': (context) => DatasAudiencia(),
        '/sobre': (context) => Sobre(),
      },
      home: TelaPrincipal(),
    );
  }
}

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Login();
  }
}
