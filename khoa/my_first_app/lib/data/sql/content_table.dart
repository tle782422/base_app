import 'package:my_first_app/data/sql/content_database.dart';
import 'package:my_first_app/model/content.dart';
import 'package:sqflite/sqflite.dart';

class ContentTable {
  static const tablename = "content";
  static const createtablequery = ''' 
    CREATE TABLE $tablename(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      contentName TEXT,
      userId INTEGER FOREIGN KEY,
      image TEXT);
  ''';
  static const droptablequery = ''' 
    DROP TABLE IF EXISTS $tablename
  ''';

  ///insert
  Future<int> insertContent(Content content) {
    final Database? db = ContentDataBase.instance.database;
    return db!.insert(tablename, content.toMap(),
        conflictAlgorithm: ConflictAlgorithm.fail);
  }

  ///delete
  Future<void> deleteContent(Content content) async {
    final Database? db = ContentDataBase.instance.database;
    await db!.delete(
      tablename,
      where: "id = ?",
      whereArgs: [content.id],
    );
  }

  ///search content by content name
  Future<List<Content>> searchContent(String contentName) async {
    final Database? db = ContentDataBase.instance.database;
    final List<Map<String, dynamic>> maps = await db!.query(tablename,
        where: "contentName = ?",
        whereArgs: [contentName]);
    return List.generate(maps.length, (index) {
      return Content.fromMap(maps[index]);
    });
  }

  static getcontent() {
    final ContentTable tb = ContentTable();
    Content content = Content(1, "Nui", 1, "assets/images/a1.jpg");
    tb.insertContent(content);
    content = Content(2, "Doi", 1,"assets/images/a1.jpg");
    tb.insertContent(content);
    content = Content(3, "Nui", 2, "assets/images/a1.jpg");
    tb.insertContent(content);
  }
}