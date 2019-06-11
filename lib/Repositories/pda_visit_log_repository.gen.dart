import 'package:database_access_layer/Entities/pda_visit_log.gen.dart';
import 'base_provider.dart';

abstract class _PdaVisitLogRepositoryGenerated {
  Future<PdaVisitLog> getInstance(int idAgent);
  Future<bool> save(PdaVisitLog agent);
  Future<List<PdaVisitLog>> retrieveAll();
}

class _PdaVisitLogRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PdaVisitLogRepositoryGeneratedImpl _this;
  static const String _tableName = "PDA_VISIT_LOG";
  static const String _primaryKey = "ID_VISIT_LOG";

  _PdaVisitLogRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PdaVisitLog> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PdaVisitLog.fromMap(map);
  }

  Future<List<PdaVisitLog>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PdaVisitLog.fromMap(f)).toList();
  }

  Future<PdaVisitLog> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PdaVisitLog.fromMap(f)).first : PdaVisitLog();
  }

  Future<Iterable<PdaVisitLog>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PdaVisitLog.fromMap(f));
  }
Future<bool> save(PdaVisitLog model) async {
    bool result;
    if (model.idVisitLog == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idVisitLog = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idVisitLog.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PdaVisitLogRepository extends _PdaVisitLogRepositoryGenerated {
  factory PdaVisitLogRepository() = _PdaVisitLogRepositoryImpl;
}

class _PdaVisitLogRepositoryImpl extends _PdaVisitLogRepositoryGeneratedImpl
    implements PdaVisitLogRepository {
  static _PdaVisitLogRepositoryImpl _this;
  factory _PdaVisitLogRepositoryImpl() {
    if (_this == null) {
      _this = new _PdaVisitLogRepositoryImpl._();
    }
    return _this;
  }
  _PdaVisitLogRepositoryImpl._();
}
*/
