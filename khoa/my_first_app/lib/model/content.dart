class Content {
  final int _id;
  String _contentName;
  int _userId;
  String _image;

  int get id => _id;
  String get contentName => _contentName;
  int get userId => _userId;
  String get image => _image;

  set setcontentname(String value) {
    _contentName = value.trim();
  }
  set setuserId(int value) {
    _userId = value;
  }
  set setimage(String value) {
    _image = value.trim();
  }

  Map<String, dynamic> toMap() {
    return {
      "contentName": _contentName,
      "userId": _userId,
      "image": _image,
    };
  }

  Content.fromMap(Map<String, dynamic> map)
      : _id = map["id"],
        _contentName = map["contentName"],
        _userId = map["userId"],
        _image = map["image"];

  Content(this._id,this._contentName,this._userId,this._image);
}