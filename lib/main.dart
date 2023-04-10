import 'package:flutter/material.dart';
import 'package:responsiveness/tipos_responsividade/responsividade_wrap.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Flutter Web',
      debugShowCheckedModeBanner: false,
      // home: ResponsividadeMediaQuery(),
      // home: ResponsividadeColumnAndRow(),
      home: ResponsividadeWrap(),
    ),
  );
}
