import 'package:flutter/material.dart';

class User extends ChangeNotifier{
  String _username;
  String _pass;
  String _name;
  String _avatar;
  String get username => _username;
  String get pass => _pass;
  String get name => _name;
  String get avatar => _avatar;
  User({
    username = "",
    pass = "",
    name = "",
    avatar = "",
  }) : _username = username, _pass = pass, _name = name, _avatar = avatar;

  void signup(String username,String pass, String name) {
    _username = username;
    _pass = pass;
    _name = name;
    _avatar = "assets/icons/avatar.png";
  } 
  bool signin(String username,String pass) {
    if ((_username == username) && (_pass == pass)) {
      notifyListeners();
      return true;
    }
    else {
      return false;
    }
  }
}
