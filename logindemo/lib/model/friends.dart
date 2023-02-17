class Friends {
  final int _id;
  String _name;
  String _avatar;
  // String _message;

  String get name => _name;
  String get avatar => _avatar;
  // String get message => _message;

  set setname(String name) {
    _name = name.trim();
  }

  set setavatar(String avatar) {
    _avatar = avatar.trim();
  }

  Friends({id = 0, name = "", avatar = ""})
      : _id = id,
        _name = name,
        _avatar = avatar;

  Friends.fromMap(Map<String, dynamic> map)
      : _id = map["id"],
        _name = map["name"],
        _avatar = map["avatar"];

  Map<String, dynamic> toMap() {
    return {"id": _id, "name": _name, "avatar": _avatar};
  }
}
