import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:loja/app/shared/produto_model.dart';
import 'produto_controller.dart';

class ProdutoPage extends StatefulWidget {
  final String titleLoja;
  const ProdutoPage({Key key, @required this.titleLoja = "Produto"})
      : super(key: key);

  @override
  _ProdutoPageState createState() => _ProdutoPageState();
}

class _ProdutoPageState extends ModularState<ProdutoPage, ProdutoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.titleLoja),
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Produtos $index'),
              subtitle: Text('Melhor Poduto'),
              leading: CircleAvatar(
                child: Text('P$index'),
              ),
              onTap: () {
                Modular.to.pushNamed('/compra',
                    arguments: ProdutoModel(
                        id: index, nome: "Produto $index", preco: 3.0 * index));
              },
            );
          },
        ));
  }
}
