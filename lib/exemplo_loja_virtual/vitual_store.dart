import 'package:flutter/material.dart';
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
        );
      }),
    );
  }
}
