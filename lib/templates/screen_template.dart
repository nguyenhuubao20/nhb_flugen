import 'base_action.dart';

class ScreenTemplate extends BaseAction {
  final String name;

  ScreenTemplate({required this.name});

  @override
  String generate() {
    final className = name.toUpperCase();

    return '''import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ${className}Screen extends ConsumerWidget {
  const ${className}Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('$className')),
      body: Center(child: Text('$className screen')),
    );
  }
}''';
  }
}
