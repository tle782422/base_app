import 'package:my_first_app/data/sql/content_table.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ContentDataBase {
  static const dbname = "content.db";
  static const dbversion = 1;
  static Database? _database;

  ContentDataBase._internal();
  static final ContentDataBase instance = ContentDataBase._internal();

  Database? get database => _database;

  static const initScripts = [ContentTable.createtablequery];
  static const migrationScripts = [ContentTable.droptablequery];

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
