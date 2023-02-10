import 'dart:async';

import 'package:logindemo/user.dart';

class LoginBloc {
  final StreamController<String> _errorController = StreamController<String>();

  Stream<String> get errorStream => _errorController.stream;

  User _user = User();
  User get user => _user;
  String get userName => _username;
  String get passWord => _pass;
  String _username = "";
  String _pass = "";

  set username(String value) {
    _username = value.trim();
  }

  set pass(String value) {
    _pass = value.trim();
  }

  bool login() {
    _errorController.sink.add("");
    if (_username.isEmpty) {
      _errorController.sink.add("Enter username!");
      return false;
    }

    if (_pass.isEmpty) {
      _errorController.sink.add("Enter password!");
      return false;
    }

    if (_username == "garu" && _pass == "123") {
      _user = User(username: "garu", pass: "123");
      return true;
    }

    _errorController.sink.add("Please check again your username or password!");
    return false;
  }

  void dispose() {
    _errorController.close();
  }
}
