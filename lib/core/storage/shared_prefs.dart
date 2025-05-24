import 'dart:convert';

import 'package:rainy_night/core/models/rainy_sould/rainy_sound.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static AppPreferences? _instance;
  SharedPreferences? _prefs;

  // Preference keys
  static const String themeKey = 'app_theme';
  static const String languageKey = 'app_language';
  static const String firstLaunchKey = 'first_launch';
  static const String notificationsKey = 'notifications_enabled';
  static const String playingSoundKey = 'playing_sound';
  // Private constructor
  AppPreferences._internal();

  // Factory constructor
  factory AppPreferences() {
    _instance ??= AppPreferences._internal();
    return _instance!;
  }

  // Initialize
  Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  // Theme preferences
  Future<void> setDarkMode(bool isDark) async {
    await _prefs?.setBool(themeKey, isDark);
  }

  bool isDarkMode() {
    return _prefs?.getBool(themeKey) ?? false;
  }

  // Language preferences
  Future<void> setLanguage(String languageCode) async {
    await _prefs?.setString(languageKey, languageCode);
  }

  String getLanguage() {
    return _prefs?.getString(languageKey) ?? 'en';
  }

  // First launch check
  Future<void> setFirstLaunch(bool isFirst) async {
    await _prefs?.setBool(firstLaunchKey, isFirst);
  }

  bool isFirstLaunch() {
    return _prefs?.getBool(firstLaunchKey) ?? true;
  }

  // Notifications preferences
  Future<void> setNotificationsEnabled(bool enabled) async {
    await _prefs?.setBool(notificationsKey, enabled);
  }

  bool areNotificationsEnabled() {
    return _prefs?.getBool(notificationsKey) ?? true;
  }

  // Clear all preferences
  Future<void> clearAll() async {
    await _prefs?.clear();
  }

  Future<void> setPlayingSound(RainySound sound) async {
    await _prefs?.setString(playingSoundKey, sound.toJson().toString());
  }

  RainySound? getPlayingSound() {
    final jsonString = _prefs?.getString(playingSoundKey);
    if (jsonString == null) return null;
    return RainySound.fromJson(jsonDecode(jsonString));
  }

  Future<void> clearPlayingSound() async {
    await _prefs?.remove(playingSoundKey);
  }
}
