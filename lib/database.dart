import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();

  static Database _database;
  List<String> tableList = [];

  Future<Database> get database async {
    if (_database == null) {
      _database = await initDB();
    }

    return _database;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "data.db3");
    await getCreateTables();

    return await openDatabase(path, version: 1, onOpen: (db) {}, onCreate: (Database db, int version) async {
      for (String item in tableList) {
        await db.execute(item);
      }
    }); //todo: create tables.
  }

  getCreateTables() async {
    String directoryPath = 'sqlite_databases';
    Directory directory = Directory(directoryPath);
    try {
      var directoryList = directory.list(recursive: false);
      await for (FileSystemEntity f in directoryList) {
        if (f is File) {
          await parseText(f.path);
        }
      }
    } catch (e) {
      print("Error !!! $e");
    }
  }

  parseText(String path) async {
    String text = await File(path).readAsString();
    tableList.add(text);
  }
}
