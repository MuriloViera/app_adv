import 'package:app_adv/widgets/gaveta.dart';
import 'package:flutter/material.dart';

import 'data.dart';

class DatasAudiencia extends StatefulWidget {
  @override
  _DatasAudienciaState createState() => _DatasAudienciaState();
}

class _DatasAudienciaState extends State<DatasAudiencia> {
  var args;
  @override
  Widget build(BuildContext context) {
    setState(() {
      args = ModalRoute.of(context).settings.arguments;
      print(args);
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Datas Audiencia',
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),
      drawer: Gaveta(args['admin']),
      body: ListView(
        children: [
          Data(),
          Data(),
          Data(),
          Data(),
          Data(),
        ],
      ),
    );
  }
}
