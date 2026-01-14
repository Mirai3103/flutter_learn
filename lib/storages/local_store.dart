import 'package:shared_preferences/shared_preferences.dart';

class LocalStore {
  static SharedPreferences? _prefs;

  static Future<SharedPreferences> get instance async {
    if (_prefs != null) return _prefs!;
    _prefs = await SharedPreferences.getInstance();
    return _prefs!;
  }

  static Future<void> setString(String key, String value) async {
    final prefs = await instance;
    await prefs.setString(key, value);
  }

  static Future<String?> getString(String key) async {
    final prefs = await instance;
    return prefs.getString(key);
  }

  static Future<void> remove(String key) async {
    final prefs = await instance;
    await prefs.remove(key);
  }
}
