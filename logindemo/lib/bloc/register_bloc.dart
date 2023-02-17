import 'dart:async';

import 'package:logindemo/database/user_table.dart';
import 'package:logindemo/model/user.dart';

class Register1Bloc {
  final StreamController<String> _errorController = StreamController<String>();
  UserTable tb = UserTable();
  Stream<String> get errorStream => _errorController.stream;

  String _email = "";
  String _pass = "";

  set email(String value) {
    _email = value.trim();
  }

  set pass(String value) {
    _pass = value.trim();
  }

  bool register1() {
    _errorController.sink.add("");
    if (_email.isEmpty || !_email.contains("@")) {
      _errorController.sink.add("Enter email!");
      return false;
    }

    if (_pass.isEmpty) {
      _errorController.sink.add("Enter password!");
      return false;
    }

    var user = User(email: _email, pass: _pass);
    UserTable().insertUser(user);
    return true;
  }

  void dispose() {
    _errorController.close();
  }
}
