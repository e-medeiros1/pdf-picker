import 'package:flutter/material.dart';
import 'package:pdf_picker/pages/home/home_page.dart';

void main(List<String> args) {
  runApp(const PdfP());
}

class PdfP extends StatelessWidget {
  const PdfP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
