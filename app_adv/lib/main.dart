import 'package:flutter/material.dart';

import 'widgets/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fsm Adv',
      theme: ThemeData(
        primaryColor: Colors.amber,
        scaffoldBackgroundColor: Colors.black,
        textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
              color: Colors.white,
            )),
        appBarTheme: AppBarTheme(
            textTheme: ThemeData.light().textTheme.copyWith(
                  headline6: TextStyle(color: Colors.white),
                )),
      ),
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
