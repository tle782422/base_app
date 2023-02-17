class Image {
  final int _id;
  final String _name;
  final String _image;

  String get name => _name;
  String get image => _image;

  set setname(String name) {
    name = _name.trim();
  }

  set setimage(String image) {
    image = _image.trim();
  }

  Image({id = 0, name = "", image = ""})
      : _id = id,
        _name = name,
        _image = image;

  Image.fromMap(Map<String, dynamic> map)
      : _id = map["id"],
        _name = map["name"],
        _image = map["image"];

  Map<String, dynamic> toMap() {
    return {"id": _id, "name": _name, "image": _image};
  }
}
