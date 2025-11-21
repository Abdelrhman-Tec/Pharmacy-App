import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

/// Local storage utility using SharedPreferences
class LocalStorage {
  LocalStorage._();

  static SharedPreferences? _prefs;

  /// Initialize SharedPreferences
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  /// Get SharedPreferences instance
  static SharedPreferences get instance {
    if (_prefs == null) {
      throw Exception('LocalStorage not initialized. Call init() first.');
    }
    return _prefs!;
  }

  // ==================== String Methods ====================

  /// Save string value
  static Future<bool> setString(String key, String value) async {
    return await instance.setString(key, value);
  }

  /// Get string value
  static String? getString(String key, {String? defaultValue}) {
    return instance.getString(key) ?? defaultValue;
  }

  // ==================== Int Methods ====================

  /// Save int value
  static Future<bool> setInt(String key, int value) async {
    return await instance.setInt(key, value);
  }

  /// Get int value
  static int? getInt(String key, {int? defaultValue}) {
    return instance.getInt(key) ?? defaultValue;
  }

  // ==================== Double Methods ====================

  /// Save double value
  static Future<bool> setDouble(String key, double value) async {
    return await instance.setDouble(key, value);
  }

  /// Get double value
  static double? getDouble(String key, {double? defaultValue}) {
    return instance.getDouble(key) ?? defaultValue;
  }

  // ==================== Bool Methods ====================

  /// Save bool value
  static Future<bool> setBool(String key, bool value) async {
    return await instance.setBool(key, value);
  }

  /// Get bool value
  static bool? getBool(String key, {bool? defaultValue}) {
    return instance.getBool(key) ?? defaultValue;
  }

  // ==================== List Methods ====================

  /// Save string list
  static Future<bool> setStringList(String key, List<String> value) async {
    return await instance.setStringList(key, value);
  }

  /// Get string list
  static List<String>? getStringList(String key) {
    return instance.getStringList(key);
  }

  // ==================== JSON Methods ====================

  /// Save object as JSON
  static Future<bool> setJson(String key, Map<String, dynamic> value) async {
    final jsonString = jsonEncode(value);
    return await setString(key, jsonString);
  }

  /// Get object from JSON
  static Map<String, dynamic>? getJson(String key) {
    final jsonString = getString(key);
    if (jsonString == null) return null;

    try {
      return jsonDecode(jsonString) as Map<String, dynamic>;
    } catch (e) {
      return null;
    }
  }

  // ==================== Other Methods ====================

  /// Check if key exists
  static bool containsKey(String key) {
    return instance.containsKey(key);
  }

  /// Remove value by key
  static Future<bool> remove(String key) async {
    return await instance.remove(key);
  }

  /// Clear all values
  static Future<bool> clear() async {
    return await instance.clear();
  }

  /// Get all keys
  static Set<String> getKeys() {
    return instance.getKeys();
  }
}

/// Common storage keys
class StorageKeys {
  StorageKeys._();

  static const String authToken = 'auth_token';
  static const String userId = 'user_id';
  static const String userEmail = 'user_email';
  static const String isLoggedIn = 'is_logged_in';
  static const String themeMode = 'theme_mode';
  static const String language = 'language';
  static const String onboardingCompleted = 'onboarding_completed';
  static const String cartItems = 'cart_items';
  static const String recentSearches = 'recent_searches';
  static const String favoriteProducts = 'favorite_products';
}
