import 'dart:async';

import 'package:my_first_app/data/user_table.dart';
import 'package:my_first_app/model/user.dart';

class RegisterBloc {

  final StreamController<String> _errorController = StreamController<String>();

  Stream<String> get error => _errorController.stream;

  final UserTable _userTable = UserTable();

  User _user = User(id: 0, username: "", password: "", name: "");

  set setusername(String value) {
    _user.setusername = value.trim();
  }
  set setpassword(String value) {
    _user.setpassword = value.trim();
  }
  set setname(String value) {
    _user.setname = value.trim();
  }

  Future<bool> validateRegister() async {
    if (_user.username.isEmpty) {
      _errorController.sink.add("Please enter username");
      return false;
    }
    if (_user.password.isEmpty) {
      _errorController.sink.add("Please enter password");
      return false;
    }
    if (_user.name.isEmpty) {
      _errorController.sink.add("Please enter your name");
      return false;
    }
    final List<User> validate = await _userTable.selectUser(_user.username);
    if (validate.isNotEmpty) {
      _errorController.sink.add("username already exists");
      return false;
    }
    await _userTable.insertUser(_user);
    return true;
  }

  void dispose() {
    _errorController.close();
  }

}