import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/log_utils.dart';

part 'shared_pref_services.g.dart';

// final sharedPreferencesServiceProvider = Provider<SharedPreferencesService>((ref) => throw UnimplementedError());

@Riverpod(keepAlive: true)
SharedPreferencesService sharedPreferencesService(SharedPreferencesServiceRef ref) {
  throw UnimplementedError();
}

class SharedPreferencesService {
  SharedPreferencesService(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  // Keys for shared preferences
  static const String kCounterKey = 'counter';
  static const String kThemeColorKey = 'theme_color';
  static const String kThemeDataKey = 'theme_data';
  static const String kUserAuthToken = 'user_token';

  // Persist and retrieve counter value
  int get counterValue => _getData(kCounterKey) ?? 0;
  set setCounterValue(int value) => _saveData(kCounterKey, value);

  // Persist and retrieve theme color
  Color get themeColor => Color(_getData(kThemeColorKey) ?? Colors.blue.value);
  set setThemeColor(Color value) => _saveData(kThemeColorKey, value.value);

  // Persist and retrieve theme data || 0 => light, 1 => dark , 2 => system
  int get themeData => (_getData(kThemeDataKey) ?? 2);
  set setThemeData(int value) => _saveData(kThemeDataKey, value);

  // Persists and retrieve user auth token
  String get userAuthToken => _getData(kUserAuthToken) ?? '';
  set setUserAuthToken(String value) => _saveData(kUserAuthToken, value);

  dynamic _getData(String key) {
    // Retrieve data from shared preferences
    var value = sharedPreferences.get(key);

    // Easily log the data that we retrieve from shared preferences
    LogUtils.logGeneral('Retrieved $key: $value');

    // Return the data that we retrieve from shared preferences
    return value;
  }

  void _saveData(String key, dynamic value) {
    // Easily log the data that we save to shared preferences
    LogUtils.logGeneral('Saving $key: $value');

    // Save data to shared preferences
    switch (value.runtimeType) {
      case String:
        sharedPreferences.setString(key, value);
        break;
      case int:
        sharedPreferences.setInt(key, value);
        break;
      case double:
        sharedPreferences.setDouble(key, value);
        break;
      case bool:
        sharedPreferences.setBool(key, value);
        break;
      case const (List<String>):
        sharedPreferences.setStringList(key, value);
        break;
    }
  }
}

/// With Singleton Pattern
/*import 'package:shared_preferences/shared_preferences.dart';

const String _kCounterKey = 'counter';
const String _kThemeColorKey = 'theme_color';

class SharedPreferencesService {
  static SharedPreferencesService? _instance;
  static late SharedPreferences _preferences;

  SharedPreferencesService._();

  // Using a singleton pattern
  static Future<SharedPreferencesService> getInstance() async {
    _instance ??= SharedPreferencesService._();

    _preferences = await SharedPreferences.getInstance();

    return _instance!;
  }

  // Persist and retrieve counter value
  int get counterValue => _getData(_kCounterKey) ?? 0;
  set counterValue(int value) => _saveData(_kCounterKey, value);

  // Persist and retrieve theme color
  Color get themeColor => Color(_getData(_kThemeColorKey) ?? Colors.blue.value);
  set themeColor(Color value) => _saveData(_kThemeColorKey, value.value);

  dynamic _getData(String key) {
    // Retrieve data from shared preferences
    var value = _preferences.get(key);

    // Easily log the data that we retrieve from shared preferences
    debugPrint('Retrieved $key: $value');

    // Return the data that we retrieve from shared preferences
    return value;
  }

  void _saveData(String key, dynamic value) {
    // Easily log the data that we save to shared preferences
    debugPrint('Saving $key: $value');

    // Save data to shared preferences
    switch (value.runtimeType) {
      case String:
        _preferences.setString(key, value);
        break;
      case int:
        _preferences.setInt(key, value);
        break;
      case double:
        _preferences.setDouble(key, value);
        break;
      case bool:
        _preferences.setBool(key, value);
        break;
      case List<String>:
        _preferences.setStringList(key, value);
        break;
    }
  }
}

// To use SharedPreferencesService
final sharedPrefService = serviceLocator<SharedPreferencesService>();

// Easily persist the counter value to shared preferences
sharedPrefService.counterValue = ++_counter;

// Easily get the counter value from shared preferences
_counter = sharedPrefService.counterValue;*/
