import 'package:flutter/material.dart';
import 'tipos_responsividade/responsividade_layout_builder.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Flutter Web',
      debugShowCheckedModeBanner: false,
      // home: ResponsividadeMediaQuery(),
      // home: ResponsividadeColumnAndRow(),
      // home: ResponsividadeWrap(),
      // home: ResponsividadeOrientationBuilder(),
      home: ResponsividadeLayoutBuilder(),
    ),
  );
}
