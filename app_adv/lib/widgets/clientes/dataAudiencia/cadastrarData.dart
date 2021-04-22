import 'package:app_adv/widgets/clientes/cadastrar/novoCadastro.dart';
import 'package:flutter/material.dart';

import '../../caixaInput.dart';
import '../../gaveta.dart';

class CadastrarData extends StatefulWidget {
  @override
  _CadastrarDataState createState() => _CadastrarDataState();
}

class _CadastrarDataState extends State<CadastrarData> {
  var dataController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  limparTela() {
    this.dataController.clear();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cadastrar Data Audiencia.',
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),
      drawer: Gaveta(true),
      body: Form(
          key: this._formKey,
          child: Container(
            child: Column(
              children: [
                CaixaInput('Data', this.dataController, false,
                    'Entre com a data da Audiencia'),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      if (this._formKey.currentState.validate()) {
                        print("Cadastro feito com sucesso");
                        setState(() {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return NovoCadastro(
                                  this.limparTela,
                                  'Cadastrar Novamente',
                                  'Deseja Cadastrar outra Data ?',
                                );
                              });
                        });
                      }
                    },
                    child: Text(
                      'ADICIONAR',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
