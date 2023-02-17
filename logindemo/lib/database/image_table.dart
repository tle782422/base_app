import 'package:logindemo/database/image_db.dart';
import 'package:logindemo/model/image.dart';
import 'package:sqflite/sqflite.dart';

class ImageTable {
  Future<int> insertImage(Image img) async {
    final Database? db = ImageDB.instance().database;
    return await db!.insert('image', img.toMap(),
        conflictAlgorithm: ConflictAlgorithm.fail);
  }

  Future<void> getData() async {
    var img1 = Image(id: 1, name: "Dog", image: "assets/dog1.png");
    await insertImage(img1);
  }

  Future<List<Image>> findImage(String name) async {
    final Database? db = ImageDB.instance().database;
    List<Map<String, dynamic>> maps = await db!.query('image');
    return List.generate(maps.length, (index) => Image.fromMap(maps[index]));
  }
}
