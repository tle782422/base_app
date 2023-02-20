import 'dart:async';

import 'package:my_first_app/data/fetch_user.dart';
//import 'package:my_first_app/data/sql/user_table.dart';
import 'package:my_first_app/model/user.dart';

class RegisterBloc {

  final StreamController<String> _errorController = StreamController<String>();

  Stream<String> get error => _errorController.stream;

  //final UserTable _userTable = UserTable();

  String _username = "";
  String _password = "";
  String _name = "";

  set setusername(String value) {
    _username = value.trim();
  }
  set setpassword(String value) {
    _password = value.trim();
  }
  set setname(String value) {
    _name = value.trim();
  }

  Future<bool> validateRegister() async {
    if (_username.isEmpty) {
      _errorController.sink.add("Please enter username");
      return false;
    }
    if (_password.isEmpty) {
      _errorController.sink.add("Please enter password");
      return false;
    }
    if (_name.isEmpty) {
      _errorController.sink.add("Please enter your name");
      return false;
    }
    //final User? validate = await _userTable.selectUserByUN(_username);
    final User? validate = await fetchUserByUserName(_username);
    if (validate != null) {
      _errorController.sink.add("username already exists");
      return false;
    }
    await createUser(_username,_password,_name);
    //await _userTable.insertUser(_user);
    return true;
  }

  void dispose() {
    _errorController.close();
  }

}