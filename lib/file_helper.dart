import 'dart:io';

import 'package:path_provider/path_provider.dart';

class FileHelper {
  static Future<File> writeFile(String path, String content) async {
    final file = File(path);
    return file.writeAsString(content);
  }

  static Future<String> readFile(String filePath) async {
    try {
      final file = File(filePath);
      String contents = await file.readAsString();
      return contents;
    } catch (e) {
      // Jika terjadi eror, mencetak pesan eror ke konsol dan mengembalikan teks kosong.
      print(e);
      return '';
    }
  }

  static Future<String> getFilePath(String fileName) async {
    final directory = await getApplicationDocumentsDirectory();
    final prefix = directory.path;
    final absolutePath = '$prefix/$fileName.txt';
    return absolutePath;
  }
}
