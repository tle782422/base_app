class User {
  final int _id;
  String _username;
  String _pass;
  String _name;
  String _email;
  String get username => _username;
  String get pass => _pass;
  String get name => _name;
  String get email => _email;

  set setusername(String username) {
    _username = username.trim();
  }

  set setpass(String pass) {
    _pass = pass.trim();
  }

  set setname(String name) {
    _name = name.trim();
  }

  set setemail(String email) {
    _email = email.trim();
  }

  User({id = 0, username = "", pass = "", name = "", email = ""})
      : _name = name,
        _id = id,
        _username = username,
        _pass = pass,
        _email = email;

  //Du lieu trong DB duoc chuyen thanh Dart Maps
  //Tao model fromMap method va toMap method
  User.fromMap(Map<String, dynamic> map)
      : _id = map["id"],
        _username = map["username"],
        _pass = map["pass"],
        _name = map["name"],
        _email = map["email"];

  Map<String, dynamic> toMap() {
    return {
      "id": _id,
      "username": _username,
      "pass": _pass,
      "name": _name,
      "email": _email
    };
  }
}
