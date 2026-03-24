import 'dart:io';

import 'package:flugen/utils/constants.dart';

class CliHandler {
  void run(List<String> commands) {
    if (commands.length < 3) {
      print(CLI.usage);
      return;
    }

    final action = commands[0];
    final type = commands[1];
    final name = commands[2];

    if (action == Command.create.name &&
        type == Resource.feature.name) {
      print('📁 Creating feature: $name...');
      createFeature(name);
      print("✅ Create template successfully");
    } else {
      print(CLI.usage);
    }
  }
}

void createFeature(String name) {
  final basePath = Directory.current.path;

  final folders = [
    'lib/constants',
    'lib/environment',
    'lib/extensions',
    'lib/features',
    'lib/routing',
    'lib/theme',
    'lib/utils',
  ];

  for (var folder in folders) {
    Directory('$basePath/$folder').createSync(recursive: true);
  }
}