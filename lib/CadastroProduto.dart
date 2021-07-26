import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:abasapp/CadastroCliente.dart';
import 'package:abasapp/CadastroProduto.dart';
import 'package:abasapp/CadastroFornecedor.dart';

class CadastroProduto extends StatefulWidget{
  const CadastroProduto({Key? key}) : super (key: key);

  @override
  _CadastroProduto createState() => _CadastroProduto();
}

class _CadastroProduto extends State<CadastroProduto> {
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
                "Cadastro de Produto",
                style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Digte a marca do produto",
              ),
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Digte a descrição do produto",
              ),
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digte o código de barras",
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
                  "Cadastrar Cliente",
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