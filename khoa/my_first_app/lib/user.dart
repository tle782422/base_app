import 'package:flutter/material.dart';

class User extends ChangeNotifier{
  String _username;
  String _pass;
  String _name;
  String get username => _username;
  String get pass => _pass;
  String get name => _name;
  User({
    username = "",
    pass = "",
    name = "",
  }) : _username = username, _pass = pass, _name = name;

  void signup(String username,String pass, String name) {
    _username = username;
    _pass = pass;
    _name = name;
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
