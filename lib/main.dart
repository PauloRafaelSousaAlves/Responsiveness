import 'package:flutter/material.dart';
import 'package:responsiveness/responsividade_column_row.dart';
// import 'package:responsiveness/responsividade_media_query.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Flutter Web',
      debugShowCheckedModeBanner: false,
      // home: ResponsividadeMediaQuery(),
      home: ResponsividadeColumnAndRow(),
    ),
  );
}
