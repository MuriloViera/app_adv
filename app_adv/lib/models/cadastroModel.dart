import 'package:flutter/foundation.dart';

class LoginModel {
  final String nome;
  final String telefone;
  final String email;
  final String logradouro;
  final String logradouroNum;
  final String logradouroComp;
  final String cidade;
  final String cep;
  final String uf;
  final String usuario;
  final String senha;

  LoginModel(
    @required this.nome, 
    @required this.telefone, 
    @required this.email,
    @required this.logradouro,
    @required this.logradouroNum,
    this.logradouroComp,
    @required this.cidade,
    @required this.cep,
    @required this.senha,
    @required this.uf,
    @required this.usuario );
  
}
