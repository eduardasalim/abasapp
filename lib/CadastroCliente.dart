import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:abasapp/CadastroCliente.dart';
import 'package:abasapp/CadastroProduto.dart';
import 'package:abasapp/CadastroFornecedor.dart';


class CadastroCliente extends StatefulWidget{
  const CadastroCliente({Key? key}) : super (key: key);

  @override
  _CadastroCliente createState() => _CadastroCliente();
}

class _CadastroCliente extends State<CadastroCliente> {
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
                "Cadastro de Cliente",
                  style:TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Digte seu nome",
                ),
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Digte seu endereço",
                ),
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digte sua idade",
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