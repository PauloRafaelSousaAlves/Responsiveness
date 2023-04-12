import 'package:flutter/material.dart';
import 'package:responsiveness/Exemplos%20praticos%20dos%20conceitos/responsividade_constraints.dart';

/// PARA CONSEGUIR VISUALIZAR CADA CLASSE, É SÓ DESCOMENTAR A CLASSE DESEJADA E COMENTAR A CLASSE QUE ESTAVA SELECIONADA PARA APARECER:

void main() {
  runApp(
    const MaterialApp(
      title: 'Flutter Web',
      debugShowCheckedModeBanner: false,
      // home: ResponsividadeMediaQuery(),
      // home: ResponsividadeColumnAndRow(),
      // home: ResponsividadeWrap(),
      // home: ResponsividadeOrientationBuilder(),
      // home: ResponsividadeLayoutBuilder(),
      // home: ResponsividadeText(),
      home: ResponsividadeConstraints(),
      // home: LojaVirtual(),
    ),
  );
}
