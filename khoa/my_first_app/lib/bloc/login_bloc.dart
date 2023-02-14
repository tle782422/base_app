import 'dart:async';

import 'package:my_first_app/data/user_table.dart';
import 'package:my_first_app/model/user.dart';

class LoginBloc {

  final StreamController<String> _errorController = StreamController<String>();

  Stream<String> get error => _errorController.stream;

  final UserTable _userTable = UserTable();

  User _user = User(id: 0, username: "", password: "", name: "");
  User get user => _user;

  Future<bool> validateLogin() async {
    if (_user.username.isEmpty) {
      _errorController.sink.add("Please enter username");
      return false;
    }
    if (_user.password.isEmpty) {
      _errorController.sink.add("Please enter password");
      return false;
    }
    final List<User> validate = await _userTable.selectUser(_user.username);
    if (validate.first.password == _user.password) {
      _user = validate.first;
      return true;
    }
    _errorController.sink.add("Wrong password or username don't exist");
    return false;
  }

  void dispose() {
    _errorController.close();
  }
}
