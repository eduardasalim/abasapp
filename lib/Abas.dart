import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:abasapp/CadastroCliente.dart';
import 'package:abasapp/CadastroProduto.dart';
import 'package:abasapp/CadastroFornecedor.dart';

class Abas extends StatefulWidget {
  const Abas({Key? key}) : super (key: key);
  @override
  _AbasState createState() => _AbasState();
}

class _AbasState extends State<Abas> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("App Flutter Abas"),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget> [
            Tab(
              text: "Cadastro de Cliente",
              icon: Icon(Icons.account_tree_rounded),
            ),
            Tab(
              text: "Cadastro de Produtos",
              icon: Icon(Icons.print),
            ),
            Tab(
              text: "Cadastro de Fornecedor",
              icon: Icon(Icons.ac_unit_sharp),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CadastroCliente(),
          CadastroProduto(),
          CadastroFornecedor(),
        ],
      ),
    );
  }
}