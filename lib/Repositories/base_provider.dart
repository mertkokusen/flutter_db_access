import 'package:database_access_layer/database.dart';
import 'package:meta/meta.dart';
import 'dart:core';
import 'package:sqflite/sqflite.dart';

abstract class BaseRepository {
  factory BaseRepository({String table, String column}) = BaseRepositoryImpl;
}

class BaseRepositoryImpl implements BaseRepository {
  final String table;
  final String column;

  Future<Database> database;

  BaseRepositoryImpl({
    @required this.table,
    @required this.column,
  }) {
    database = DBProvider.db.database;
  }

  Future<List<Map<String, dynamic>>> rawQuery(String sql, [List<dynamic> arguments]) async {
    final maplist = await (await database).rawQuery(sql, arguments);
    return maplist;
  }

  Future<int> insertItem(Map<String, dynamic> item, {Transaction tnx}) async {
    DatabaseExecutor executor = tnx ?? (await database);
    return (await executor.insert(table, item));
  }

  Future<bool> deleteItem(String itemId) async {
    return (await (await database).delete(table, where: '$column = ?', whereArgs: [itemId])) > 0;
  }

  Future<bool> updateItem(String itemId, Map<String, dynamic> item, {Transaction tnx}) async {
    DatabaseExecutor executor = tnx ?? (await database);
    return (await executor.update(table, item, where: '$column = ?', whereArgs: [itemId])) > 0;
  }

  Future<Map<String, dynamic>> getItem(String itemId, [List<String> columns]) async {
    final maplist = await (await database).query(table, columns: columns, where: '$column = ?', whereArgs: [itemId]);
    return maplist.first;
  }

  Future<List<Map<String, dynamic>>> getAllItems() async {
    final maplist = await (await database).query(table);
    return maplist;
  }
}

// class QueryTransform{
//   static const String regex = "@.+\b";

//   String sql;
//   List<dynamic> arguments;

//   static QueryTransform transform(String sql, Map<String,dynamic> arguments)
//   {
//     var matcher = RegExp(regex);
//     var mathes = matcher.allMatches(sql).map((m) => m.);
//   }
// }
