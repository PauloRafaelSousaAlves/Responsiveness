// ignore_for_file: unused_element
import 'package:flutter/material.dart';

class ResponsividadeConstraints extends StatefulWidget {
  const ResponsividadeConstraints({Key? key}) : super(key: key);

  @override
  State<ResponsividadeConstraints> createState() =>
      _ResponsividadeConstraintsState();
}

class _ResponsividadeConstraintsState extends State<ResponsividadeConstraints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// PARA CONSEGUIR VISUALIZAR CADA METODO EM ESPECIFICO,
      /// É SÓ DESCOMENTAR O METODO DESEJADO E COMENTAR O METODO QUE ESTAVA SELECIONADO PARA APARECER:

      body: Center(
        // child: _bodyConstrainedBox(),
        // child: _bodyUnconstrinedBox(),
        child: _bodyOverflowBox(),
      ),
    );
  }
}

/// Este widget serve para definirmos as constraints para o filho
/// EXEMPLO:
///
_bodyConstrainedBox() {
  return ConstrainedBox(
    //Aqui estamos definindo os tamanhos maximos e minimos:
    constraints: const BoxConstraints(
      minWidth: 70,
      minHeight: 70,
      maxWidth: 150,
      maxHeight: 150,
    ),
    // Aqui estamos definindo um tamanho menor que o esperado nas constraints,
    // então o filho ira obedecer os tamanhos impostos pelo widget pai,
    // o mesmo seria feito se tivessemos colocado um tamanho superior ao definido pelo widget pai.
    child: Container(
      color: Colors.green,
      width: 10,
      height: 10,
    ),
  );
}

/// Este widget permite que o filho tenha o tamanho que ele quiser,
/// ELE NÃO FICA LIMITADO AO TAMANHO DA TELA,
/// porem ele da um overflow. E não pode ser redenrizado como infinito o tamanho
/// EXEMPLO:
///
_bodyUnconstrinedBox() {
  return UnconstrainedBox(
    child: Container(
      color: Colors.green,
      width: 20,
      height: 50,
    ),
  );
}

/// Este widget permite que o filho tenha o tamanho que ele quiser,
/// ELE NÃO FICA LIMITADO AO TAMANHO DA TELA,
/// Ele não acusa nenhum erro de overflow, porem, se for colocado filhos dentro, pode não aparecer na tela.
/// EXEMPLO:
///
_bodyOverflowBox() {
  return OverflowBox(
    minWidth: 0,
    minHeight: 0,
    maxWidth: double.infinity,
    maxHeight: double.infinity,
    child: Container(
      color: Colors.green,
      width: 4000,
      height: 50,
    ),
  );
}
