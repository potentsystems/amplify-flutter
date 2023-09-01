import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

/// Save constraint locally to file
Future<void> saveConstraintLocally(Map<String, dynamic> constraint) async {
  final directory = await getApplicationSupportDirectory();
  final path = directory.path;
  final file = File('$path/logging_constraint.json');
  await file.writeAsString(jsonEncode(constraint));
}

/// Load constraint from file
Future<Map<String, dynamic>?> loadConstraint() async {
  final directory = await getApplicationSupportDirectory();
  final path = directory.path;
  final file = File('$path/logging_constraint.json');

  if (file.existsSync()) {
    final content = await file.readAsString();
    return jsonDecode(content) as Map<String, dynamic>;
  }
  return null;
}
