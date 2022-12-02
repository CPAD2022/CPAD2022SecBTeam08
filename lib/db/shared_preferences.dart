import 'package:shared_preferences/shared_preferences.dart';

class MySharedPrefference {
  static SharedPreferences? _preferences;
  static const String key = 'userEmail';

  static init() async {
    _preferences = await SharedPreferences.getInstance();
    return _preferences;
  }

  static Future saveUserEmail(String cemail) async {
    return await _preferences!.setString(key, cemail);
  }

  static Future<String>? getUserEmail() async =>
      await _preferences!.getString(key) ?? "";
}