import 'package:database_access_layer/Entities/tsm_task_execution_status.gen.dart';
import 'base_provider.dart';

abstract class _TsmTaskExecutionStatusRepositoryGenerated {
  Future<TsmTaskExecutionStatus> getInstance(int idAgent);
  Future<bool> save(TsmTaskExecutionStatus agent);
  Future<List<TsmTaskExecutionStatus>> retrieveAll();
}

class _TsmTaskExecutionStatusRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmTaskExecutionStatusRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_TASK_EXECUTION_STATUS";
  static const String _primaryKey = "ID_TASK_EXECUTION_STATUS";

  _TsmTaskExecutionStatusRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmTaskExecutionStatus> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmTaskExecutionStatus.fromMap(map);
  }

  Future<List<TsmTaskExecutionStatus>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmTaskExecutionStatus.fromMap(f)).toList();
  }

  Future<TsmTaskExecutionStatus> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmTaskExecutionStatus.fromMap(f)).first : TsmTaskExecutionStatus();
  }

  Future<Iterable<TsmTaskExecutionStatus>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmTaskExecutionStatus.fromMap(f));
  }
Future<bool> save(TsmTaskExecutionStatus model) async {
    bool result;
    if (model.idTaskExecutionStatus == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idTaskExecutionStatus = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idTaskExecutionStatus.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmTaskExecutionStatusRepository extends _TsmTaskExecutionStatusRepositoryGenerated {
  factory TsmTaskExecutionStatusRepository() = _TsmTaskExecutionStatusRepositoryImpl;
}

class _TsmTaskExecutionStatusRepositoryImpl extends _TsmTaskExecutionStatusRepositoryGeneratedImpl
    implements TsmTaskExecutionStatusRepository {
  static _TsmTaskExecutionStatusRepositoryImpl _this;
  factory _TsmTaskExecutionStatusRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmTaskExecutionStatusRepositoryImpl._();
    }
    return _this;
  }
  _TsmTaskExecutionStatusRepositoryImpl._();
}
*/
