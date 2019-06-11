import 'package:database_access_layer/Entities/csh_task.gen.dart';
import 'base_provider.dart';

abstract class _CshTaskRepositoryGenerated {
  Future<CshTask> getInstance(int idAgent);
  Future<bool> save(CshTask agent);
  Future<List<CshTask>> retrieveAll();
}

class _CshTaskRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CshTaskRepositoryGeneratedImpl _this;
  static const String _tableName = "CSH_TASK";
  static const String _primaryKey = "ID_CASH_TASK";

  _CshTaskRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CshTask> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CshTask.fromMap(map);
  }

  Future<List<CshTask>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CshTask.fromMap(f)).toList();
  }

  Future<CshTask> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CshTask.fromMap(f)).first : CshTask();
  }

  Future<Iterable<CshTask>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CshTask.fromMap(f));
  }
Future<bool> save(CshTask model) async {
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
abstract class CshTaskRepository extends _CshTaskRepositoryGenerated {
  factory CshTaskRepository() = _CshTaskRepositoryImpl;
}

class _CshTaskRepositoryImpl extends _CshTaskRepositoryGeneratedImpl
    implements CshTaskRepository {
  static _CshTaskRepositoryImpl _this;
  factory _CshTaskRepositoryImpl() {
    if (_this == null) {
      _this = new _CshTaskRepositoryImpl._();
    }
    return _this;
  }
  _CshTaskRepositoryImpl._();
}
*/
