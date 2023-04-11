import 'package:flutter/material.dart';

class ResponsividadeOrientationBuilder extends StatefulWidget {
  const ResponsividadeOrientationBuilder({Key? key}) : super(key: key);

  @override
  State<ResponsividadeOrientationBuilder> createState() =>
      _ResponsividadeOrientationBuilderState();
}

class _ResponsividadeOrientationBuilderState
    extends State<ResponsividadeOrientationBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade Orientation Builder'),
      ),

      /// O widget OrientationBuilder - serve para podermos modificar a orientação da tela com responsividade
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return GridView.count(
            ///Aqui no crossAxisCount, fazemos uma validação para definir se esta em portrait ou landscap
            crossAxisCount: orientation == Orientation.portrait ? 2 :  4,
            children: [
              Container(color: Colors.black),
              Container(color: Colors.red),
              Container(color: Colors.yellow),
              Container(color: Colors.purple),
              Container(color: Colors.orange),
              Container(color: Colors.black),
            ],
          );
        },
      ),
    );
  }
}
