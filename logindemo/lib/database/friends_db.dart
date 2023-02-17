import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class FriendsDB {
  static const dbname = "friends.db";
  static const dbversion = 1;
  Database? _database;

  FriendsDB.instance();
  Database? get database => _database;

  //Tao DB
  init() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), dbname),
      onCreate: (db, version) {
        db.execute(
            "CREATE TABLE friends(id INTEGER PRIMARY KEY AUTOINCREASE, name TEXT, avatar TEXT)");
      },
      onUpgrade: (db, oldVersion, newVersion) {},
      version: dbversion,
    );
  }
}
