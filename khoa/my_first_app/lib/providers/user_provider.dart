import 'package:flutter/cupertino.dart';
import 'package:my_first_app/data/user.dart';

class UserProvider extends User with ChangeNotifier {
  //UserData usdao = UserData();
  //List<User> ds = <User>[];
  // void signup(String username, String pass, String name) {
  //   ds.add(User(
  //       avatar: "assets/icons/avatar.png",
  //       name: name,
  //       pass: pass,
  //       username: username));
  //   setusername = username;
  //   setpass = pass;
  //   setavatar = "assets/icons/avatar.png";
  //   setname = name;
  //   notifyListeners();
  // }

  void signin(User user) {
    setavatar = user.avatar;
    setname = user.name;
    setpass = user.pass;
    setusername = user.username;
    notifyListeners();
  }

  // bool signin(String username, String pass) {
  //   //ds = usdao.getuser();
  //   ds += usdao.getuser();
  //   for (User s in ds) {
  //     if ((s.username == username) && (s.pass == pass)) {
  //       setusername = s.username;
  //       setpass = s.pass;
  //       setavatar = s.avatar;
  //       setname = s.name;
  //       notifyListeners();
  //       return true;
  //     }
  //   }
  //   return false;
  // }
}