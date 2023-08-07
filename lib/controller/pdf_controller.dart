
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class PdfController {
    static Future<File?> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File file = File(result.files.single.path!);
      return file;
    } else {}
    return null;
  }


  static Future<File> storeFile(String url, List<int> bytes) async {
    String filename = basename(url);

    final dir = await getApplicationDocumentsDirectory();

    final file = File('${dir.path}/$filename');

    await file.writeAsBytes(bytes, flush: true);

    return file;
  }
}