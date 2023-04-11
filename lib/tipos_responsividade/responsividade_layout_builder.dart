import 'dart:html';

import 'package:flutter/material.dart';

class ResponsividadeLayoutBuilder extends StatefulWidget {
  const ResponsividadeLayoutBuilder({Key? key}) : super(key: key);

  @override
  State<ResponsividadeLayoutBuilder> createState() =>
      _ResponsividadeLayoutBuilderState();
}

class _ResponsividadeLayoutBuilderState
    extends State<ResponsividadeLayoutBuilder> {
  @override
  Widget build(BuildContext context) {
    ///Para ficar uma melhor vizualização vamos criar duas variaveis de largura e altura
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade LayoutBuilder'),
      ),
      body: SizedBox(
        height: height,
        width: width,
        child: LayoutBuilder(
          /// No constraint -> conseguimos capturar informações da onde o LayoutBuilder esta sendo usado
          /// O LayoutBuilder sempre pega o tamanho disponivel do widget que está dentro
          /// O LayoutBuilder pode ser usado dentro de qualquer widget
          builder: (context, constraint) {
            //exemplo para pegar a largura maxima, para o widget que ele esta dentro
            var larguraLayoutBuilder = constraint.maxWidth;
            print(larguraLayoutBuilder);
            if (larguraLayoutBuilder < 480) {
              //tela de celular pequena - exibir ate 4 colunas
              return const Text('Celulares');
            } else if (larguraLayoutBuilder < 600) {
              //celular com telas maiores - exibir ate 6 colunas
              return const Text('Celulares');
            } else if (larguraLayoutBuilder < 840) {
              //celular com telas maiores - exibir ate 8 colunas
              return const Text('Celulares & tablets maiores');
            } else if (larguraLayoutBuilder < 960) {
              //celular/tablet com telas maiores - exibir ate 12 colunas
              return const Text('Telas Maiores');
            } else {
              //para outros dispositivos maiores
              return const Text('Telas Maiores que o normal');
            }
          },
        ),
      ),
    );
  }
}
