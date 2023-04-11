import 'package:flutter/material.dart';
import 'package:responsiveness/exemplo_loja_virtual/widget/item_product.dart';
import 'package:responsiveness/exemplo_loja_virtual/widget/mobile_appbar.dart';
import 'package:responsiveness/exemplo_loja_virtual/widget/web_appbar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        ///Variaveis altura e largura appBar
        var largura = constraints.maxWidth;
        var altura = AppBar().preferredSize.height;

        return Scaffold(
          //Aqui está sendo feito uma validação de appbar para celular e telas maiores
          appBar: largura < 600
              ? PreferredSize(
                  preferredSize: Size(largura, altura),
                  child: const MobileAppbar(),
                )
              : PreferredSize(
                  preferredSize: Size(largura, altura),
                  child: const WebAppbar(),
                ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: GridView.count(
              //quantidade de coluna
              crossAxisCount: _ajustarVisualizacao(largura),
              //espaçamento lateral entre os filhos
              crossAxisSpacing: 8,
              //espaçamento altura entre os filhos
              mainAxisSpacing: 8,
              children: const [
                //foi criado este widget passando todas as informações de contrução dele necessário
                ItemProduct(
                    descricao: 'AAAAAAAAA', preco: 'preco', icon: Icons.abc),
                ItemProduct(
                    descricao: 'AAAAAAAAA', preco: 'preco', icon: Icons.abc),
                ItemProduct(
                    descricao: 'AAAAAAAAA', preco: 'preco', icon: Icons.abc),
                ItemProduct(
                    descricao: 'AAAAAAAAA', preco: 'preco', icon: Icons.abc),
                ItemProduct(
                    descricao: 'AAAAAAAAA', preco: 'preco', icon: Icons.abc),
                ItemProduct(
                    descricao: 'AAAAAAAAA', preco: 'preco', icon: Icons.abc),
                ItemProduct(
                    descricao: 'AAAAAAAAA', preco: 'preco', icon: Icons.abc),
                ItemProduct(
                    descricao: 'AAAAAAAAA', preco: 'preco', icon: Icons.abc),
                ItemProduct(
                    descricao: 'AAAAAAAAA', preco: 'preco', icon: Icons.abc),
                ItemProduct(
                    descricao: 'AAAAAAAAA', preco: 'preco', icon: Icons.abc),
                ItemProduct(
                    descricao: 'AAAAAAAAA', preco: 'preco', icon: Icons.abc),
                ItemProduct(
                    descricao: 'AAAAAAAAA', preco: 'preco', icon: Icons.abc),
              ],
            ),
          ),
        );
      }),
    );
  }

  ///Metodo criado para fazer o ajuste das colunas no GridView.count - USANDO IF/ELSE
  _ajustarVisualizacao(double larguraTela) {
    int colunas = 2;
    if (larguraTela <= 600) {
      colunas;
    } else if (larguraTela <= 960) {
      colunas = 4;
    } else {
      colunas = 6;
    }
    return colunas;
  }
}
