import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ImageDB {
  static const dbname = "image.db";
  static const dbversion = 1;
  Database? _database;

  ImageDB.instance();
  Database? get database => _database;

  //Tao DB
  init() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), dbname),
      onCreate: (db, version) {
        db.execute(
            "CREATE TABLE image(id INTEGER PRIMARY KEY AUTOINCREASE, name TEXT, image TEXT UNIQUE)");
      },
      onUpgrade: (db, oldVersion, newVersion) {},
      version: dbversion,
    );
  }
}
