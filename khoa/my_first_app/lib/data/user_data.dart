import 'package:my_first_app/data/user.dart';

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