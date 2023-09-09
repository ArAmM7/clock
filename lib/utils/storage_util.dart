// ignore_for_file: unused_element

import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/lap/lap.dart';
import '../models/list/list_dto.dart';

class Preferences {
  static const initialTime = 'initialTime';
  static const isRunning = 'isRunning';
  static const laps = 'laps';

  Preferences._();
}

class StorageUtils {
  static Future<SharedPreferences> get _sharedInstance =>
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

  static Future<List<Lap>> getLaps() async {
    final list = await _getString(Preferences.laps);
    if (list == null) {
      return [];
    }
    return ListDto.fromJson(jsonDecode(list)).laps;
  }

  // ignore: avoid_positional_boolean_parameters
  static Future<void> setLaps(List<Lap> laps) async {
    final json = ListDto(laps: laps).toJson();
    await _setString(Preferences.laps, jsonEncode(json));
  }

  static Future<void> clear() async {
    final prefs = await _sharedInstance;
    await prefs.clear();
  }

  /// Private helper functions.
  static Future<T?> _read<T>(String key) async {
    final prefs = await _sharedInstance;
    final value = prefs.getString(key);

    return value == null ? null : json.decode(value) as T;
  }

  static Future<void> _save(String key, Object value) async {
    final prefs = await _sharedInstance;
    await prefs.setString(key, json.encode(value));
  }

  static Future<void> _remove(String key) async {
    final prefs = await _sharedInstance;
    await prefs.remove(key);
  }

  // ignore: avoid_positional_boolean_parameters
  static Future<void> _setBool(String key, bool value) async {
    final prefs = await _sharedInstance;

    await prefs.setBool(key, value);
  }

  static Future<bool> _getBool(String key) async {
    final prefs = await _sharedInstance;

    return prefs.getBool(key) ?? false;
  }

  static Future<void> _setString(String key, String value) async {
    final prefs = await _sharedInstance;
    await prefs.setString(key, value);
  }

  static Future<String?> _getString(String key) async {
    final prefs = await _sharedInstance;

    return prefs.getString(key);
  }

  static Future<void> _setStringList(String key, List<String> value) async {
    final prefs = await _sharedInstance;
    await prefs.setStringList(key, value);
  }

  static Future<List<String>?> _getStringList(String key) async {
    final prefs = await _sharedInstance;

    return prefs.getStringList(key);
  }
}
