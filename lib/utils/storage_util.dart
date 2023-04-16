import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static const initialTime = 'initialTime';
  static const isRunning = 'isRunning';
  static const elapsedLaps = 'userStatus';
  static const laps = 'laps';
  static const elapsed = 'elapsed';

  Preferences._();
}

class StorageUtils {
  static Future<SharedPreferences> get sharedInstance =>
      SharedPreferences.getInstance();

  static Future<DateTime?> getInitialTime() async {
    final timeString = await _getString(Preferences.initialTime);
    if (timeString != null) {
      return DateTime.parse(timeString);
    }

    return null;
  }

  static Future<void> setInitialTime(DateTime initialTime) async {
    await _setString(Preferences.initialTime, initialTime.toIso8601String());
  }

  static Future<void> removeInitialTime() async {
    await _remove(Preferences.initialTime);
  }

  static Future<bool> getIsRunning() async {
    return _getBool(Preferences.isRunning);
  }

  // ignore: avoid_positional_boolean_parameters
  static Future<void> setIsRunning(bool isRunning) async {
    await _setBool(Preferences.isRunning, isRunning);
  }

  static Future<void> clear() async {
    final prefs = await sharedInstance;
    await prefs.clear();
  }

  /// Private helper functions.
  static Future<T?> _read<T>(String key) async {
    final prefs = await sharedInstance;
    final value = prefs.getString(key);

    return value == null ? null : json.decode(value) as T;
  }

  static Future<void> _save(String key, Object value) async {
    final prefs = await sharedInstance;
    await prefs.setString(key, json.encode(value));
  }

  static Future<void> _remove(String key) async {
    final prefs = await sharedInstance;
    await prefs.remove(key);
  }

  // ignore: avoid_positional_boolean_parameters
  static Future<void> _setBool(String key, bool value) async {
    final prefs = await sharedInstance;

    await prefs.setBool(key, value);
  }

  static Future<bool> _getBool(String key) async {
    final prefs = await sharedInstance;

    return prefs.getBool(key) ?? false;
  }

  static Future<void> _setString(String key, String value) async {
    final prefs = await sharedInstance;
    await prefs.setString(key, value);
  }

  static Future<String?> _getString(String key) async {
    final prefs = await sharedInstance;

    return prefs.getString(key);
  }

  static Future<void> _setStringList(String key, List<String> value) async {
    final prefs = await sharedInstance;
    await prefs.setStringList(key, value);
  }

  static Future<List<String>?> _getStringList(String key) async {
    final prefs = await sharedInstance;

    return prefs.getStringList(key);
  }
}
