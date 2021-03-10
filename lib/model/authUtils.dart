import 'package:shared_preferences/shared_preferences.dart';

class AuthUtils {
  static AuthUtils instance = AuthUtils();

  Future saveToken(String token, String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("token", token);
    await prefs.setString("name", name);
    await prefs.setBool("islogin", true);
    // print(name);
  }
}
