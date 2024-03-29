import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static late SharedPreferencesService _instance;
  static late SharedPreferences _pref;

  static Future<SharedPreferencesService> getInstance() async {
    // Initialise the asynchronous shared preferences
    _pref = await SharedPreferences.getInstance();
    _instance = SharedPreferencesService();

    return Future.value(_instance);
  }

  Future delete({required String key}) async {
    return await _pref.remove(key);
  }

  bool hasKey(String key) => _pref.containsKey(key);

  Future read({required String key}) async {
    return _pref.get(key);
  }

  Future write({required String key, required dynamic value}) async {
    if (value is bool) {
      _pref.setBool(key, value);
    } else if (value is String) {
      _pref.setString(key, value);
    } else if (value is int) {
      _pref.setInt(key, value);
    } else if (value is double) {
      _pref.setDouble(key, value);
    }
  }
}
