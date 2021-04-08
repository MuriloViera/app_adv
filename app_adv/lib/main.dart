import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'widgets/login.dart';

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
                headline6: TextStyle(
                  color: Color.fromRGBO(19, 25, 37, 1),
                ),
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
                headline4: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
                headline5: TextStyle(
                  color: Color.fromRGBO(176, 158, 80, 0.9),
                ),
              ),
          // Definições de utilização para AppBar()
          appBarTheme: AppBarTheme(
              centerTitle: true,
              color: Color.fromRGBO(19, 25, 37, 1),
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
                  primary: Colors.amber, padding: EdgeInsets.all(30)))),
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
