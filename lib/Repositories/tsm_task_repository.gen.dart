import 'package:database_access_layer/Entities/tsm_task.gen.dart';
import 'base_provider.dart';

abstract class _TsmTaskRepositoryGenerated {
  Future<TsmTask> getInstance(int idAgent);
  Future<bool> save(TsmTask agent);
  Future<List<TsmTask>> retrieveAll();
}

class _TsmTaskRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmTaskRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_TASK";
  static const String _primaryKey = "ID_TASK";

  _TsmTaskRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmTask> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmTask.fromMap(map);
  }

  Future<List<TsmTask>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmTask.fromMap(f)).toList();
  }

  Future<TsmTask> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmTask.fromMap(f)).first : TsmTask();
  }

  Future<Iterable<TsmTask>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmTask.fromMap(f));
  }
Future<bool> save(TsmTask model) async {
    bool result;
    if (model.idTask == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idTask = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idTask.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmTaskRepository extends _TsmTaskRepositoryGenerated {
  factory TsmTaskRepository() = _TsmTaskRepositoryImpl;
}

class _TsmTaskRepositoryImpl extends _TsmTaskRepositoryGeneratedImpl
    implements TsmTaskRepository {
  static _TsmTaskRepositoryImpl _this;
  factory _TsmTaskRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmTaskRepositoryImpl._();
    }
    return _this;
  }
  _TsmTaskRepositoryImpl._();
}
*/
