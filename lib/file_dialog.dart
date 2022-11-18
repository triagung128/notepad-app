import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;

class FileDialog extends StatelessWidget {
  final List<FileSystemEntity> files;

  const FileDialog({super.key, required this.files});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Choose your file'),
      ),
      child: ListView.builder(
        itemCount: files.length,
        itemBuilder: (context, index) {
          final file = files[index];
          return Material(
            child: ListTile(
              title: Text(path.split(file.path).last),
              onTap: () => Navigator.pop(context, file),
            ),
          );
        },
      ),
    );
  }
}
