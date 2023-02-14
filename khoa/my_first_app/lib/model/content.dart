class Content {
  final int _id;
  String _contentname;
  String _username;
  String _name;
  String _avatar;
  String _image;

  int get id => _id;
  String get contentname => _contentname;
  String get username => _username;
  String get name => _name;
  String get avatar => _avatar;
  String get image => _image;

  set setcontentname(String value) {
    _contentname = value.trim();
  }
  set setusername(String value) {
    _username = value.trim();
  }
  set setavatar(String value) {
    _avatar = value.trim();
  }
  set setname(String value) {
    _name = value.trim();
  }
  set setimage(String value) {
    _image = value.trim();
  }

  Map<String, dynamic> toMap() {
    return {
      "contentname": _contentname,
      "username": _username,
      "name": _name,
      "avatar": _avatar,
      "image": _image,
    };
  }

  Content.fromMap(Map<String, dynamic> map)
      : _id = map["id"],
        _contentname = map["contentname"],
        _username = map["username"],
        _name = map["name"],
        _avatar = map["avatar"],
        _image = map["image"];

  Content({
    required int id,
    required String contentname,
    required String username,
    required String name,
    required String avatar,
    required String image,
  })  : _id = id,
        _contentname = contentname,
        _username = username,
        _name = name,
        _avatar = avatar,
        _image = image;
}