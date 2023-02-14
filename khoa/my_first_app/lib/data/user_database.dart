import 'package:my_first_app/data/user_table.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class UserDataBase {
  static const dbname = "user.db";
  static const dbversion = 1;
  static Database? _database;

  UserDataBase._internal();
  static final UserDataBase instance = UserDataBase._internal();

  Database? get database => _database;

  static const initScripts = [UserTable.createtablequery];
  static const migrationScripts = [UserTable.droptablequery];

  init() async {
    _database = await openDatabase(join(await getDatabasesPath(), dbname),
    version: dbversion,
        onCreate: (db, version) async {
          //return initScripts.forEach((script) async => db.execute(script));
      for (var script in initScripts) {
        await db.execute(script);
      }
    }, onUpgrade: (db, oldVersion, newVersion) async {
      for (var script in migrationScripts) {
        await db.execute(script);
      }
    });
  }
}
