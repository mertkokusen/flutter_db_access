import 'package:database_access_layer/Entities/tsm_execution_status.gen.dart';
import 'base_provider.dart';

abstract class _TsmExecutionStatusRepositoryGenerated {
  Future<TsmExecutionStatus> getInstance(int idAgent);
  Future<bool> save(TsmExecutionStatus agent);
  Future<List<TsmExecutionStatus>> retrieveAll();
}

class _TsmExecutionStatusRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmExecutionStatusRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_EXECUTION_STATUS";
  static const String _primaryKey = "ID_EXECUTION_STATUS";

  _TsmExecutionStatusRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmExecutionStatus> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmExecutionStatus.fromMap(map);
  }

  Future<List<TsmExecutionStatus>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmExecutionStatus.fromMap(f)).toList();
  }

  Future<TsmExecutionStatus> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmExecutionStatus.fromMap(f)).first : TsmExecutionStatus();
  }

  Future<Iterable<TsmExecutionStatus>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmExecutionStatus.fromMap(f));
  }
Future<bool> save(TsmExecutionStatus model) async {
    bool result;
    if (model.idExecutionStatus == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idExecutionStatus = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idExecutionStatus.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmExecutionStatusRepository extends _TsmExecutionStatusRepositoryGenerated {
  factory TsmExecutionStatusRepository() = _TsmExecutionStatusRepositoryImpl;
}

class _TsmExecutionStatusRepositoryImpl extends _TsmExecutionStatusRepositoryGeneratedImpl
    implements TsmExecutionStatusRepository {
  static _TsmExecutionStatusRepositoryImpl _this;
  factory _TsmExecutionStatusRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmExecutionStatusRepositoryImpl._();
    }
    return _this;
  }
  _TsmExecutionStatusRepositoryImpl._();
}
*/
