import 'package:flutter/material.dart';

class ResponsividadeWrap extends StatefulWidget {
  const ResponsividadeWrap({Key? key}) : super(key: key);

  @override
  State<ResponsividadeWrap> createState() => _ResponsividadeWrapState();
}

class _ResponsividadeWrapState extends State<ResponsividadeWrap> {
  @override
  Widget build(BuildContext context) {
    ///Para ficar uma melhor vizualização vamos criar duas variaveis de largura e altura
    var width = MediaQuery.of(context).size.width;

    double widthWrap = 200;
    double heigthWrap = 200;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade Wrap'),
      ),
      body: Container(
        color: Colors.black12,
        width: width,

        ///O widget Wrap tem como objetivo quebrar os blocos de conteudo para a proxima linha

        child: Wrap(
          //alignment: WrapAlignment... -> serve para fazermos o alinhamento
          alignment: WrapAlignment.center,
          //spacing: -> serve para colocar um espaçamento de largura entre eles
          spacing: 10,
          //runSpacing: -> serve para colocar um espaçamento de altura quando os widgets vão para outra linha
          runSpacing: 10,
          children: [
            Container(
              width: widthWrap,
              height: heigthWrap,
              color: Colors.orange,
            ),
            Container(
              width: widthWrap,
              height: heigthWrap,
              color: Colors.red,
            ),
            Container(
              width: widthWrap,
              height: heigthWrap,
              color: Colors.pink,
            ),
            Container(
              width: widthWrap,
              height: heigthWrap,
              color: Colors.black,
            ),
            Container(
                width: widthWrap, height: heigthWrap, color: Colors.yellow),
          ],
        ),
      ),
    );
  }
}
