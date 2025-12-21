import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/material.dart';

class SharedPrefHelper {
  SharedPrefHelper._();

  // Secure Storage
  static const _secureStorage = FlutterSecureStorage();

  /// Save token securely
  static Future<void> setSecuredString(String key, String value) async {
    debugPrint("FlutterSecureStorage : setSecuredString key: $key, value: $value");
    await _secureStorage.write(key: key, value: value);
  }

  /// Get token securely
  static Future<String> getSecuredString(String key) async {
    final value = await _secureStorage.read(key: key) ?? '';
    debugPrint('FlutterSecureStorage : getSecuredString key: $key, value: $value');
    return value;
  }

  /// Clear secure storage
  static Future<void> clearAllSecuredData() async {
    debugPrint('FlutterSecureStorage : all data cleared');
    await _secureStorage.deleteAll();
  }
}
