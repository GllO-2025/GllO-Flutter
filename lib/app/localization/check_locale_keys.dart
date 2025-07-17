import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  /// 누락 키 검사할때 기준이 되는 파일
  final basePath = 'asset/translation/en-US.json';

  /// 누락 키 검사 대상 파일
  final files = [
    'asset/translation/en-US.json',
    'asset/translation/ko-KR.json',
  ];

  final base = await _loadJsonAsMap(basePath);
  for (final file in files) {
    final target = await _loadJsonAsMap(file);
    _checkMissingKeys(base, target);
  }
}

Future<Map<String, dynamic>> _loadJsonAsMap(String path) async {
  final content = await File(path).readAsString();
  return jsonDecode(content);
}

void _checkMissingKeys(Map base, Map target, [String path = '']) {
  for (final key in base.keys) {
    final fullPath = path.isEmpty ? key : '$path.$key';
    if (!target.containsKey(key)) {
      //ignore: avoid_print
      print('❌ Missing key: $fullPath');
    } else if (base[key] is Map && target[key] is Map) {
      _checkMissingKeys(base[key], target[key], fullPath);
    } else if (base[key] is Map && target[key] is! Map) {
      //ignore: avoid_print
      print('⚠️ Structure mismatch at: $fullPath (expected nested object)');
    }
  }
}
