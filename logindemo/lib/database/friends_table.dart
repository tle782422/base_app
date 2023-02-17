import 'package:logindemo/database/friends_db.dart';
import 'package:logindemo/model/friends.dart';
import 'package:sqflite/sqflite.dart';

class FriendsTable {
  Future<int> insertFriends(Friends friends) async {
    final Database? db = FriendsDB.instance().database;
    return await db!.insert('friends', friends.toMap(),
        conflictAlgorithm: ConflictAlgorithm.fail);
  }

  Future<void> getData() async {
    var friend1 = Friends(id: 1, name: "James", avatar: "assests/avatar.jpg");
    await insertFriends(friend1);

    var friend2 =
        Friends(id: 2, name: "Will Kenny", avatar: "assests/avatar.jpg");
    await insertFriends(friend2);

    var friend3 =
        Friends(id: 1, name: "Beth Williams", avatar: "assests/avatar.jpg");
    await insertFriends(friend3);
  }
}
