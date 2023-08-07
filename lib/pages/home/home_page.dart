import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pdf_picker/controller/pdf_controller.dart';
import 'package:pdf_picker/pages/pdf_viewer/pdf_page_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pdf picker from device'),
      ),
      body: Container(
        color: Colors.blue.shade200,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .9,
        child: Center(
          child: ElevatedButton(
            onPressed: () async {
              var file = await PdfController.pickFile();

              if (file == null) return;
              openPDF(context, file);
            },
            child: const Text('File picker pdf'),
          ),
        ),
      ),
    );
  }

  void openPDF(BuildContext context, File file) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PdfPageView(file: file)));
}
