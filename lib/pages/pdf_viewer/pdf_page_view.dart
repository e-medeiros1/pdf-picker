import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';

class PdfPageView extends StatefulWidget {
  final File file;

  const PdfPageView({super.key, required this.file});

  @override
  State<PdfPageView> createState() => _PdfPageViewState();
}

class _PdfPageViewState extends State<PdfPageView> {
  @override
  Widget build(BuildContext context) {
    final name = basename(widget.file.path);

    return Scaffold(
      appBar: AppBar(
        title: Text(name.toString()),
      ),
      body: PDFView(
        enableSwipe: true,
        gestureRecognizers: const <Factory<ScaleGestureRecognizer>>{},
        pageSnap: true,
        nightMode: true,
        swipeHorizontal: true,
        filePath: widget.file.path,
      ),
    );
  }
}
