import 'dart:io';
import 'package:database_access_layer/table_names.dart';
import 'package:flutter/services.dart';
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

    return await openDatabase(path, version: 1, onOpen: (db) {}, onCreate: (Database db, int version) async {
      for (String item in sqlCreateStatements) {
        await db.execute(await loadAsset(item));
      }
    });
  }

  Future<String> loadAsset(String item) async {
    return await rootBundle.loadString(item);
  }
}
