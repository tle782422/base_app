import 'package:my_first_app/data/content_database.dart';
import 'package:my_first_app/model/content.dart';
import 'package:sqflite/sqflite.dart';

class ContentTable {
  static const tablename = "content";
  static const createtablequery = ''' 
    CREATE TABLE $tablename(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      contentname TEXT,
      username TEXT,
      name TEXT,
      avatar TEXT,
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
  Future<List<Content>> searchContent(String contentname) async {
    final Database? db = ContentDataBase.instance.database;
    final List<Map<String, dynamic>> maps = await db!.query(tablename,
        where: "contentname = ?",
        whereArgs: [contentname]);
    return List.generate(maps.length, (index) {
      return Content.fromMap(maps[index]);
    });
  }

  static getcontent() {
    final ContentTable tb = ContentTable();
    Content content = Content(id: 0, contentname: "Nui", username: "ABC", name: "123", avatar: "assets/icons/avatar.png", image: "assets/images/a1.jpg");
    tb.insertContent(content);
    content = Content(id: 1, contentname: "Doi", username: "ABC", name: "123", avatar: "assets/icons/avatar.png", image: "assets/images/a1.jpg");
    tb.insertContent(content);
    content = Content(id: 2, contentname: "Nui", username: "ABC", name: "123", avatar: "assets/icons/avatar.png", image: "assets/images/a1.jpg");
    tb.insertContent(content);
  }
}