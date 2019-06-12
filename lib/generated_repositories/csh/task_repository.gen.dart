
part of '../../repositories/csh/task_repository.dart';

abstract class _TaskRepositoryGenerated {
  Future<Task> getInstance(int idAgent);
  Future<List<Task>> retrieveAll();

 Future<bool> save(Task agent);
}
class _TaskRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TaskRepositoryGeneratedImpl _this;
  static const String _tableName = "TASK";
  static const String _primaryKey = "ID_CASH_TASK";

  _TaskRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<Task> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return Task.fromMap(map);
  }

  Future<List<Task>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => Task.fromMap(f)).toList();
  }

  Future<Task> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => Task.fromMap(f)).first : Task();
  }

  Future<Iterable<Task>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => Task.fromMap(f));
  }
Future<bool> save(Task model) async {
    bool result;
    if (model.idCashTask == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCashTask = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCashTask.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TaskRepository extends _TaskRepositoryGenerated {
  factory TaskRepository() = _TaskRepositoryImpl;
}

class _TaskRepositoryImpl extends _TaskRepositoryGeneratedImpl
    implements TaskRepository {
  static _TaskRepositoryImpl _this;
  factory _TaskRepositoryImpl() {
    if (_this == null) {
      _this = new _TaskRepositoryImpl._();
    }
    return _this;
  }
  _TaskRepositoryImpl._();
}
*/
