import 'dart:async';

class Register2Bloc {
  final StreamController<String> _errorController = StreamController<String>();

  Stream<String> get errorStream => _errorController.stream;

  String _username = "";

  set username(String value) {
    _username = value.trim();
  }

  bool register2() {
    _errorController.sink.add("");
    if (_username.isEmpty) {
      _errorController.sink.add("Enter username!");
      return false;
    }
    return true;
  }

  void dispose() {
    _errorController.close();
  }
}
