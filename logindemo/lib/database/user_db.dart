import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class UserDB {
  static const dbname = "user.db";
  static const dbversion = 1;
  Database? _database;

  UserDB._internal();
  static final UserDB instance = UserDB._internal();  
  Database? get database => _database;

  //Tao DB
  init() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), dbname),
      onCreate: (db, version) {
        db.execute(
            "CREATE TABLE user(id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT UNIQUE, pass TEXT, name TEXT, email TEXT UNIQUE)");
      },
      onUpgrade: (db, oldVersion, newVersion) {},
      version: dbversion,
    );
  }
}
