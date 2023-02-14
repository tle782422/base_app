class User {
  final int _id;
  String _username;
  String _password;
  String _name;
  String _avatar;

  int get id => _id;
  String get username => _username;
  String get password => _password;
  String get name => _name;
  String get avatar => _avatar;

  set setusername(String username) {
    _username = username.trim();
  }

  set setavatar(String avatar) {
    _avatar = avatar.trim();
  }

  set setname(String name) {
    _name = name.trim();
  }

  set setpassword(String pass) {
    _password = pass.trim();
  }

  Map<String, dynamic> toMap() {
    return {
      //"id": _id,
      "username": _username,
      "password": _password,
      "name": _name,
      "avatar": _avatar,
    };
  }

  User.fromMap(Map<String, dynamic> map)
      : _id = map["id"],
        _username = map["username"],
        _password = map["password"],
        _name = map["name"],
        _avatar = map["avatar"];

  User({
    required int id,
    required String username,
    required String password,
    required String name,
    String avatar = "assets/icons/avatar.png",
  })  : _id = id,
        _username = username,
        _password = password,
        _name = name,
        _avatar = avatar;
}
