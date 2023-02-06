import 'dart:async';

class LoginBloc {

  final StreamController<String> _errorController = StreamController<String>();

  Stream<String> get error => _errorController.stream;

  String _username = "";
  String _password = "";

  set setusername(String username) {
    _username = username.trim();
  }
  set setpassword(String pass) {
    _password = pass.trim();
  }

  bool validateLogin() {
    if (_username.isEmpty) {
      _errorController.sink.add("Please enter username");
      return false;
    }
    if (_password.isEmpty) {
      _errorController.sink.add("Please enter password");
      return false;
    }
    if (_username == "ABC" && _password == "123") {
      
      return true;
    }
    _errorController.sink.add("Wrong password or username don't exist");
    return false;
  }

  void dispose() {
    _errorController.close();
  }
}
