import 'package:flutter/material.dart';

class User {
  String _username;
  String _pass;
  String _name;
  String _avatar;
  String get username => _username;
  String get pass => _pass;
  String get name => _name;
  String get avatar => _avatar;
  set setusername(String username) {
    _username = username;
  }

  set setavatar(String avatar) {
    _avatar = avatar;
  }

  set setname(String name) {
    _name = name;
  }

  set setpass(String pass) {
    _pass = pass;
  }

  User({
    username = "",
    pass = "",
    name = "",
    avatar = "",
  })  : _username = username,
        _pass = pass,
        _name = name,
        _avatar = avatar;
}

class UserData {
  List<User> getuser() {
    List<User> ds = <User>[];
    ds.add(User(
        avatar: "assets/icons/avatar.png",
        name: "ABC",
        pass: "123",
        username: "ABC"));
    ds.add(User(
        avatar: "assets/icons/avatar.png",
        name: "BCD",
        pass: "234",
        username: "BCD"));
    ds.add(User(
        avatar: "assets/icons/avatar.png",
        name: "ACC",
        pass: "444",
        username: "ACD"));
    return ds;
  }
}

class UserMain extends User with ChangeNotifier {
  UserData usdao = UserData();
  List<User> ds = <User>[];
  void signup(String username, String pass, String name) {
    ds.add(User(
        avatar: "assets/icons/avatar.png",
        name: name,
        pass: pass,
        username: username));
    setusername = username;
    setpass = pass;
    setavatar = "assets/icons/avatar.png";
    setname = name;
    notifyListeners();
  }

  bool signin(String username, String pass) {
    ds = usdao.getuser();
    for (User s in ds) {
      if ((s.username == username) && (s.pass == pass)) {
        setusername = s.username;
        setpass = s.pass;
        setavatar = s.avatar;
        setname = s.name;
        notifyListeners();
        return true;
      }
    }
    return false;
  }
}