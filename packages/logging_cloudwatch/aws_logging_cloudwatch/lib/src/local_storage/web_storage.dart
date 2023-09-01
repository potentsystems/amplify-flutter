import 'dart:convert';
import 'dart:html';

/// Save constraint locally to web storage
Future<void> saveConstraintLocally(Map<String, dynamic> constraint) async {
  window.localStorage['logging_constraint'] = jsonEncode(constraint);
}

/// Load constraint from web storage
Map<String, dynamic>? loadConstraint() {
  final content = window.localStorage['logging_constraint'];
  if (content != null) {
    return jsonDecode(content) as Map<String, dynamic>;
  }
  return null;
}
