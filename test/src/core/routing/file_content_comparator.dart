import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as path;

/// Based on https://github.com/flutter/flutter/blob/3.7.3/packages/flutter_test/lib/src/_goldens_io.dart#L59
class FileContentComparator {

  FileContentComparator(
    Uri testFile, {
    path.Style? pathStyle,
  })  : basedir = _getBasedir(testFile, pathStyle),
        _path = _getPath(pathStyle);
  final Uri basedir;
  final path.Context _path;

  static path.Context _getPath(path.Style? style) {
    return path.Context(style: style ?? path.Style.platform);
  }

  static Uri _getBasedir(Uri testFile, path.Style? pathStyle) {
    final context = _getPath(pathStyle);
    final testFilePath = context.fromUri(testFile);
    final testDirectoryPath = context.dirname(testFilePath);
    return context.toUri(testDirectoryPath + context.separator);
  }

  Future<void> update(Uri golden, String content) async {
    final goldenFile = _getGoldenFile(golden);
    await goldenFile.parent.create(recursive: true);
    await goldenFile.writeAsString(content, flush: true);
  }

  Future<bool> compare(Uri golden, String content) async {
    final goldenFile = _getGoldenFile(golden);
    final actualContent = goldenFile.readAsStringSync();
    return actualContent == content;
  }

  Uri getTestUri(Uri key, int? version) {
    return goldenFileComparator.getTestUri(key, version);
  }

  File _getGoldenFile(Uri golden) => File(_path.join(_path.fromUri(basedir), _path.fromUri(golden.path)));
}
