import 'package:flutter/material.dart';
import 'package:responsiveness/exemplo_loja_virtual/vitual_store.dart';

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
      home: LojaVirtual(),
    ),
  );
}
