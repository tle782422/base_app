class User {
  String _username;
  String _pass;
  String get username => _username;
  String get pass => _pass;

  set setusername(String username) {
    _username = username.trim();
  }

  set setpass(String pass) {
    _pass = pass.trim();
  }

  User({
    username = "",
    pass = "",
  })  : _username = username,
        _pass = pass;

  // void signup(String username, String pass, String name) {
  //   _username = username;
  //   _pass = pass;
  // }

  // bool signin(String username, String pass) {
  //   if ((_username == username) && (_pass == pass)) {
  //     notifyListeners();
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
}
