import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:abasapp/CadastroCliente.dart';
import 'package:abasapp/CadastroProduto.dart';
import 'package:abasapp/CadastroFornecedor.dart';


class CadastroFornecedor extends StatefulWidget{
  const CadastroFornecedor({Key? key}) : super (key: key);

  @override
  _CadastroFornecedor createState() => _CadastroFornecedor();
}

class _CadastroFornecedor extends State<CadastroFornecedor> {
  @override
  Widget build(BuildContext context){
    return Container(
      child:  SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Cadastro de Fornecedor",
                style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Digte o nome da empresa",
              ),
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Digte seu e-mail",
              ),
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digte seu CPF/CNPJ",
              ),
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: RaisedButton(
                color: Colors.blueAccent,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
                child: Text(
                  "Cadastrar Fornecedor",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}