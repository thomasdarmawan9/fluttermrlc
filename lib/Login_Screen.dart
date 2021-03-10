import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mrlcapp/model/authUtils.dart';
import './HomeScreen.dart';
import 'package:avatar_glow/avatar_glow.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String email, password;
  final _key = new GlobalKey<FormState>();
  final AuthUtils authUtils = AuthUtils();
  bool _validate = false;
  bool _validatepass = false;

  login() async {
    var jsonResponse;
    String token;
    String name;
    final response = await http.post("http://10.0.2.2:8000/api/auth/login",
        body: {"email": email, "password": password});
    print(response.body);
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        token = jsonResponse['access_token'];
        name = jsonResponse['name'];
        // print(token);
        // print(name);
        // var authUtils;
        await authUtils.saveToken(token, name);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }
    }
  }

  savePref(String token, String name) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setString("token", token);
      preferences.setString("name", name);
    });
  }

  bool _showPassword = false;
  void _togglevisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffda1830),
        body: Center(
          child: Form(
              key: _key,
              child: ListView(
                children: <Widget>[
                  // Container(
                  //     alignment: Alignment.center,
                  //     padding: EdgeInsets.all(15),
                  //     child: Text(
                  //       'Merry Riana Learning Centre Parents App',
                  //       textAlign: TextAlign.center,
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //         fontWeight: FontWeight.w500,
                  //         fontSize: 30,
                  //       ),
                  //     )),
                  SizedBox(
                    height: 85.0,
                  ),
                  AvatarGlow(
                    endRadius: 90,
                    duration: Duration(seconds: 2),
                    glowColor: Colors.white24,
                    repeat: true,
                    repeatPauseDuration: Duration(seconds: 2),
                    startDelay: Duration(seconds: 1),
                    child: Material(
                        elevation: 0,
                        shape: CircleBorder(),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Image.asset(
                            'assets/mrlc_hp.png',
                          ),
                          radius: 65.0,
                        )),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 50, 50, 8),
                    child: TextFormField(
                      controller: nameController,
                      obscureText: false,
                      onSaved: (String value) {
                        email = value;
                      },
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10.0),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        // set the prefix icon constraints
                        // prefixIconConstraints: BoxConstraints(
                        //   minWidth: 25,
                        //   minHeight: 25,
                        // ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: 'Email *',
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 15),
                        errorText: _validate ? 'Value Can\'t Be Empty' : null,
                        errorStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        ),
                        errorBorder: new UnderlineInputBorder(
                          borderSide:
                              new BorderSide(color: Colors.white, width: 2.0),
                        ),
                        focusedErrorBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                        ),
                      ),
                      validator: (value) {
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    child: TextFormField(
                      obscureText: !_showPassword,
                      onSaved: (String value) {
                        password = value;
                      },
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                      controller: passwordController,
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10.0),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: 'Password *',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        errorStyle:
                            TextStyle(color: Colors.white, fontSize: 11),
                        errorText:
                            _validatepass ? 'Value Can\'t Be Empty' : null,
                        errorBorder: new UnderlineInputBorder(
                          borderSide:
                              new BorderSide(color: Colors.white, width: 2.0),
                        ),
                        focusedErrorBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            _togglevisibility();
                          },
                          child: Icon(
                            _showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      validator: (value) {
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 45.0,
                  ),
                  Container(
                      height: 45,
                      padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        textColor: Colors.black,
                        color: Colors.white,
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xff303030),
                            fontSize: 17,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            nameController.text.isEmpty
                                ? _validate = true
                                : _validate = false;
                            passwordController.text.isEmpty
                                ? _validatepass = true
                                : _validatepass = false;
                          });
                          if (_key.currentState.validate()) {
                            _key.currentState.save();
                            print(nameController.text);
                            print(passwordController.text);
                            // login();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          }
                        },
                      )),
                  // SizedBox(
                  //   height: 5.0,
                  // ),
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(15),
                      child: TextButton(
                        child: Text(
                          "Forget Password",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      )),
                ],
              )),
        ));
  }
}
