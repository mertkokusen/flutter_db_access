import 'package:database_access_layer/Entities/tsm_task_approval_status.gen.dart';
import 'base_provider.dart';

abstract class _TsmTaskApprovalStatusRepositoryGenerated {
  Future<TsmTaskApprovalStatus> getInstance(int idAgent);
  Future<bool> save(TsmTaskApprovalStatus agent);
  Future<List<TsmTaskApprovalStatus>> retrieveAll();
}

class _TsmTaskApprovalStatusRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmTaskApprovalStatusRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_TASK_APPROVAL_STATUS";
  static const String _primaryKey = "ID_TASK_APPROVAL_STATUS";

  _TsmTaskApprovalStatusRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmTaskApprovalStatus> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmTaskApprovalStatus.fromMap(map);
  }

  Future<List<TsmTaskApprovalStatus>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmTaskApprovalStatus.fromMap(f)).toList();
  }

  Future<TsmTaskApprovalStatus> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmTaskApprovalStatus.fromMap(f)).first : TsmTaskApprovalStatus();
  }

  Future<Iterable<TsmTaskApprovalStatus>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmTaskApprovalStatus.fromMap(f));
  }
Future<bool> save(TsmTaskApprovalStatus model) async {
    bool result;
    if (model.idTaskApprovalStatus == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idTaskApprovalStatus = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idTaskApprovalStatus.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmTaskApprovalStatusRepository extends _TsmTaskApprovalStatusRepositoryGenerated {
  factory TsmTaskApprovalStatusRepository() = _TsmTaskApprovalStatusRepositoryImpl;
}

class _TsmTaskApprovalStatusRepositoryImpl extends _TsmTaskApprovalStatusRepositoryGeneratedImpl
    implements TsmTaskApprovalStatusRepository {
  static _TsmTaskApprovalStatusRepositoryImpl _this;
  factory _TsmTaskApprovalStatusRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmTaskApprovalStatusRepositoryImpl._();
    }
    return _this;
  }
  _TsmTaskApprovalStatusRepositoryImpl._();
}
*/
