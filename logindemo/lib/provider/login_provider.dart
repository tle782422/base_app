import 'package:flutter/cupertino.dart';
import 'package:logindemo/model/user.dart';

class LoginProvider extends User with ChangeNotifier {
  void signin(User user) {
    setusername = user.username;
    setpass = user.pass;
    notifyListeners();
  }
}
