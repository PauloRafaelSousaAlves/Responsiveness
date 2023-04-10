import 'package:flutter/material.dart';

class ResponsividadeColumnAndRow extends StatefulWidget {
  const ResponsividadeColumnAndRow({Key? key}) : super(key: key);

  @override
  State<ResponsividadeColumnAndRow> createState() =>
      _ResponsividadeColumnAndRowState();
}

class _ResponsividadeColumnAndRowState
    extends State<ResponsividadeColumnAndRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade Column and Row'),
      ),

      ///As propriedades a seguir serve tanto para Row, quanto para Column

      body: Column(
        children: [
          ///O Expanded serve para ocupar todo espaço disponivel
          Expanded(
            ///no Flex conseguimos definir a proporção que quero que ocupe
            ///podemos pensar como se fosse 100% ao total e colocamos no flex a porcentagem correspondente que precisamos
            flex: 20,
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
              flex: 60,
              child: Row(
                children: [
                  Expanded(
                    flex: 20,
                    child: Container(
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ],
              )),
          Expanded(
            flex: 20,
            child: Container(
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
