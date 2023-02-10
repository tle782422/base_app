import 'dart:async';

class Register1Bloc {
  final StreamController<String> _errorController = StreamController<String>();

  Stream<String> get errorStream => _errorController.stream;

  String _email = "";
  String _password = "";

  set email(String value) {
    _email = value.trim();
  }

  set password(String value) {
    _password = value.trim();
  }

  bool register1() {
    _errorController.sink.add("");
    if (_email.isEmpty) {
      _errorController.sink.add("Enter email!");
      return false;
    }

    if (_password.isEmpty) {
      _errorController.sink.add("Enter password!");
      return false;
    }
    return true;
  }

  void dispose() {
    _errorController.close();
  }
}
