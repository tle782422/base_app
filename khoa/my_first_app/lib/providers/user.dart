import 'package:flutter/material.dart';

// class User {
//   String _username;
//   String _pass;
//   String _name;
//   String _avatar;
//   String get username => _username;
//   String get pass => _pass;
//   String get name => _name;
//   String get avatar => _avatar;
//   set setusername(String username) {
//     _username = username;
//   }
//   set setavatar(String avatar) {
//     _avatar = avatar;
//   }
//   set setname(String name) {
//     _name = name;
//   }
//   set setpass(String pass) {
//     _pass = pass;
//   }
//   User({
//     username = "",
//     pass = "",
//     name = "",
//     avatar = "",
//   }) : _username = username, _pass = pass, _name = name, _avatar = avatar;
// }

// class UserData {
//   List<User> getuser() {
//     List<User> ds = User() as List<User>;
//     ds.add(User(avatar: "assets/icons/avatar.png", name: "ABC", pass: "123", username: "ABC"));
//     ds.add(User(avatar: "assets/icons/avatar.png", name: "BCD", pass: "234", username: "BCD"));
//     ds.add(User(avatar: "assets/icons/avatar.png", name: "ACC", pass: "444", username: "ACD"));
//     return ds;
//   }
// }

// class UserMain extends User with ChangeNotifier {
//   List<User> ds = <User>[];
//   UserData usdao = UserData();
//   void signup(String username,String pass, String name) {
//     ds.add(User(avatar: "assets/icons/avatar.png", name: name, pass: pass, username: username));
//     User(avatar: "assets/icons/avatar.png", name: name, pass: pass, username: username);
//   }
//   bool signin(String username,String pass) {
//     ds = usdao.getuser();
//     for (User s in ds) {
//       if ((s.username == username) && (s.pass == pass)) {
//         User(avatar: s.avatar, name: s.name, pass: s.pass, username: s.username);
//         return true;
//       }
//     }
//     return false;
//   }
// }

class User extends ChangeNotifier{
  String _username;
  String _pass;
  String _name;
  String _avatar;
  String get username => _username;
  String get pass => _pass;
  String get name => _name;
  String get avatar => _avatar;
  User({
    username = "",
    pass = "",
    name = "",
    avatar = "",
  }) : _username = username, _pass = pass, _name = name, _avatar = avatar;

  void signup(String username,String pass, String name) {
    _username = username;
    _pass = pass;
    _name = name;
    _avatar = "assets/icons/avatar.png";
  } 
  bool signin(String username,String pass) {
    if ((_username == username) && (_pass == pass)) {
      notifyListeners();
      return true;
    }
    else {
      return false;
    }
  }
}