import 'package:app_adv/widgets/caixaInput.dart';
import 'package:app_adv/widgets/clientes/cadastrar/novoCadastro.dart';
import 'package:flutter/material.dart';

import '../../gaveta.dart';

class CadastrarAndamento extends StatefulWidget {
  @override
  _CadastrarAndamentoState createState() => _CadastrarAndamentoState();
}

class _CadastrarAndamentoState extends State<CadastrarAndamento> {
  var dataController = TextEditingController();
  var descController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  limparTela() {
    this.dataController.clear();
    this.descController.clear();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cadastrar Andamento.',
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
                    'Entre com a data da publicação'),
                CaixaInput('Descrição', this.descController, false,
                    'Entre com a descrição da publicação'),
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
                                  'Deseja Cadastrar outro Andamento ?',
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
