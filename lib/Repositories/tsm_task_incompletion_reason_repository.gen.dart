import 'package:database_access_layer/Entities/tsm_task_incompletion_reason.gen.dart';
import 'base_provider.dart';

abstract class _TsmTaskIncompletionReasonRepositoryGenerated {
  Future<TsmTaskIncompletionReason> getInstance(int idAgent);
  Future<bool> save(TsmTaskIncompletionReason agent);
  Future<List<TsmTaskIncompletionReason>> retrieveAll();
}

class _TsmTaskIncompletionReasonRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmTaskIncompletionReasonRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_TASK_INCOMPLETION_REASON";
  static const String _primaryKey = "ID_TASK_INCOMPLETION_REASON";

  _TsmTaskIncompletionReasonRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmTaskIncompletionReason> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmTaskIncompletionReason.fromMap(map);
  }

  Future<List<TsmTaskIncompletionReason>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmTaskIncompletionReason.fromMap(f)).toList();
  }

  Future<TsmTaskIncompletionReason> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmTaskIncompletionReason.fromMap(f)).first : TsmTaskIncompletionReason();
  }

  Future<Iterable<TsmTaskIncompletionReason>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmTaskIncompletionReason.fromMap(f));
  }
Future<bool> save(TsmTaskIncompletionReason model) async {
    bool result;
    if (model.idTaskIncompletionReason == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idTaskIncompletionReason = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idTaskIncompletionReason.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmTaskIncompletionReasonRepository extends _TsmTaskIncompletionReasonRepositoryGenerated {
  factory TsmTaskIncompletionReasonRepository() = _TsmTaskIncompletionReasonRepositoryImpl;
}

class _TsmTaskIncompletionReasonRepositoryImpl extends _TsmTaskIncompletionReasonRepositoryGeneratedImpl
    implements TsmTaskIncompletionReasonRepository {
  static _TsmTaskIncompletionReasonRepositoryImpl _this;
  factory _TsmTaskIncompletionReasonRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmTaskIncompletionReasonRepositoryImpl._();
    }
    return _this;
  }
  _TsmTaskIncompletionReasonRepositoryImpl._();
}
*/
