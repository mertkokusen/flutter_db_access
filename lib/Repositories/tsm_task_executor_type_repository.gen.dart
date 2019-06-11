import 'package:database_access_layer/Entities/tsm_task_executor_type.gen.dart';
import 'base_provider.dart';

abstract class _TsmTaskExecutorTypeRepositoryGenerated {
  Future<TsmTaskExecutorType> getInstance(int idAgent);
  Future<bool> save(TsmTaskExecutorType agent);
  Future<List<TsmTaskExecutorType>> retrieveAll();
}

class _TsmTaskExecutorTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmTaskExecutorTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_TASK_EXECUTOR_TYPE";
  static const String _primaryKey = "ID_TASK_EXECUTOR_TYPE";

  _TsmTaskExecutorTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmTaskExecutorType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmTaskExecutorType.fromMap(map);
  }

  Future<List<TsmTaskExecutorType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmTaskExecutorType.fromMap(f)).toList();
  }

  Future<TsmTaskExecutorType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmTaskExecutorType.fromMap(f)).first : TsmTaskExecutorType();
  }

  Future<Iterable<TsmTaskExecutorType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmTaskExecutorType.fromMap(f));
  }
Future<bool> save(TsmTaskExecutorType model) async {
    bool result;
    if (model.idTaskExecutorType == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idTaskExecutorType = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idTaskExecutorType.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmTaskExecutorTypeRepository extends _TsmTaskExecutorTypeRepositoryGenerated {
  factory TsmTaskExecutorTypeRepository() = _TsmTaskExecutorTypeRepositoryImpl;
}

class _TsmTaskExecutorTypeRepositoryImpl extends _TsmTaskExecutorTypeRepositoryGeneratedImpl
    implements TsmTaskExecutorTypeRepository {
  static _TsmTaskExecutorTypeRepositoryImpl _this;
  factory _TsmTaskExecutorTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmTaskExecutorTypeRepositoryImpl._();
    }
    return _this;
  }
  _TsmTaskExecutorTypeRepositoryImpl._();
}
*/
