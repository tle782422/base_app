import 'package:my_first_app/data/sql/user_database.dart';
import 'package:my_first_app/model/user.dart';
import 'package:sqflite/sqflite.dart';

class UserTable {
  static const tablename = "user";
  static const createtablequery = ''' 
    CREATE TABLE $tablename(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      username TEXT UNIQUE,
      password TEXT,
      name TEXT,
      avatar TEXT);
  ''';
  static const droptablequery = ''' 
    DROP TABLE IF EXISTS $tablename
  ''';

  ///register
  Future<int> insertUser(User user) {
    final Database? db = UserDataBase.instance.database;
    return db!.insert(tablename, user.toMap(),
        conflictAlgorithm: ConflictAlgorithm.fail);
  }

  ///delete
  Future<void> deleteUser(User user) async {
    final Database? db = UserDataBase.instance.database;
    await db!.delete(
      tablename,
      where: "id = ?",
      whereArgs: [user.id],
    );
  }

  ///find user by username
  Future<User?> selectUserByUN(String username) async {
    final Database? db = UserDataBase.instance.database;
    final List<Map<String, dynamic>> maps = await db!.query(tablename,
        where: "username = ?",
        whereArgs: [username]);
    if (maps.isEmpty) {
      return null;
    }
    else {
      return User.fromMap(maps.first);
    }
  }
  
  ///find user by id
  Future<List<User>> selectUserById(int id) async {
    final Database? db = UserDataBase.instance.database;
    final List<Map<String, dynamic>> maps = await db!.query(tablename,
        where: "id = ?",
        whereArgs: [id]);
    return List.generate(maps.length, (index) {
      return User.fromMap(maps[index]);
    });
  }
}
