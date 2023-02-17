import 'package:logindemo/database/user_db.dart';
import 'package:logindemo/model/user.dart';
import 'package:sqflite/sqflite.dart';

class UserTable {
  Future<int> insertUser(User user) async {
    final Database? db = UserDB.instance().database;
    return await db!.insert('user', user.toMap(),
        conflictAlgorithm: ConflictAlgorithm.fail);
  }

  Future<void> getData() async {
    var user = User(
        id: 1,
        username: "garu",
        pass: "123",
        name: "Khoi Le",
        email: "lmkhoi.htec@gmail.com");
    await insertUser(user);
  }

  Future<List<User>> checkUser(String username, String pass) async {
    final Database? db = UserDB.instance().database;
    List<Map<String, dynamic>> maps = await db!.query('user');
    return List.generate(maps.length, (index) => User.fromMap(maps[index]));
  }
}
