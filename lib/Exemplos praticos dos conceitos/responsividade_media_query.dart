import 'package:flutter/material.dart';

class ResponsividadeMediaQuery extends StatefulWidget {
  const ResponsividadeMediaQuery({Key? key}) : super(key: key);

  @override
  State<ResponsividadeMediaQuery> createState() =>
      _ResponsividadeMediaQueryState();
}

class _ResponsividadeMediaQueryState extends State<ResponsividadeMediaQuery> {
  @override
  Widget build(BuildContext context) {
    /// Acessando o MediaQuery, podemos pegar varias informações do dispositivo
    /// O MediaQuery, pega a altura e largura total do dispositivo, então sempmre precisamos ficar atento a isso.

    ///Para ficar uma melhor vizualização vamos criar duas variaveis de largura e altura
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    ///Configuração para capturar a altura da barra de status
    ///Pós isso vamos pegar a variavel e subtrair do tamanho que colocamos no container
    var alturaBarraStatus = MediaQuery.of(context).padding.top;

    ///Configuração para capturar a altura da AppBar
    ///Pós isso vamos pegar a variavel e subtrair do tamanho que colocamos no container
    var alturaAppBar = AppBar().preferredSize.height + alturaBarraStatus;

    ///Configuração para largura
    ///Para deixar na porcentagem que devemos utilizar sempre multiplicamos por 0. e o valor que necessita.
    
    //var widthItenMultiplication = width * 0.33;
    var widthItenPercentage = width / 3;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade MediaQuery'),
      ),
      body: Row(
        children: [
          Container(
            width: widthItenPercentage,
            height: height - alturaAppBar,
            color: Colors.red,
          ),
          Container(
            width: widthItenPercentage,
            height: height - alturaAppBar,
            color: Colors.black,
          ),
          Container(
            width: widthItenPercentage,
            height: height - alturaAppBar,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
