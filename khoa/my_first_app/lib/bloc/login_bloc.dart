import 'dart:async';

import 'package:my_first_app/data/fetch_user.dart';
//import 'package:my_first_app/data/sql/user_table.dart';
import 'package:my_first_app/model/user.dart';

class LoginBloc {
  final StreamController<String> _errorController = StreamController<String>();

  Stream<String> get error => _errorController.stream;

  //final UserTable _userTable = UserTable();

  late User _user;
  User get user => _user;

  String _username = "";
  String _password = "";

  set setusername(String value) {
    _username = value.trim();
  }
  set setpassword(String value) {
    _password = value.trim();
  }

  Future<bool> validateLogin() async {
    if (_username.isEmpty) {
      _errorController.sink.add("Please enter username");
      return false;
    }
    if (_password.isEmpty) {
      _errorController.sink.add("Please enter password");
      return false;
    }
    //final User? validate = await _userTable.selectUserByUN(_user.username);
    final User? validate = await fetchUserByUserName(_username);
    if (validate != null) {
      if (validate.password == _user.password) {
        _user = validate;
        return true;
      }
    }
    _errorController.sink.add("Wrong password or username don't exist");
    return false;
  }

  void dispose() {
    _errorController.close();
  }
}
