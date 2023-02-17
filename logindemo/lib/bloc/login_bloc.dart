import 'dart:async';

import 'package:logindemo/database/user_table.dart';
import 'package:logindemo/model/user.dart';

class LoginBloc {
  final StreamController<String> _errorController = StreamController<String>();
  UserTable tb = UserTable();
  Stream<String> get errorStream => _errorController.stream;

  User _user = User();
  User get user => _user;
  String _username = "";
  String _pass = "";

  set username(String value) {
    _username = value.trim();
  }

  set pass(String value) {
    _pass = value.trim();
  }

  Future<bool> login() async {
    _errorController.sink.add("");
    if (_username.isEmpty) {
      _errorController.sink.add("Enter username!");
      return false;
    }

    if (_pass.isEmpty) {
      _errorController.sink.add("Enter password!");
      return false;
    }
    List<User> _data = await UserTable().checkUser(_username, _pass);
    if (_data.isNotEmpty) {
      _user = _data.first;
      return true;
    }

    _errorController.sink.add("Please check again your username or password!");
    return false;
  }

  void dispose() {
    _errorController.close();
  }
}
