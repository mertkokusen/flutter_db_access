import 'package:database_access_layer/Entities/mem_audit_problem.gen.dart';
import 'base_provider.dart';

abstract class _MemAuditProblemRepositoryGenerated {
  Future<MemAuditProblem> getInstance(int idAgent);
  Future<bool> save(MemAuditProblem agent);
  Future<List<MemAuditProblem>> retrieveAll();
}

class _MemAuditProblemRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MemAuditProblemRepositoryGeneratedImpl _this;
  static const String _tableName = "MEM_AUDIT_PROBLEM";
  static const String _primaryKey = "ID_PROBLEM";

  _MemAuditProblemRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<MemAuditProblem> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return MemAuditProblem.fromMap(map);
  }

  Future<List<MemAuditProblem>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => MemAuditProblem.fromMap(f)).toList();
  }

  Future<MemAuditProblem> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => MemAuditProblem.fromMap(f)).first : MemAuditProblem();
  }

  Future<Iterable<MemAuditProblem>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => MemAuditProblem.fromMap(f));
  }
Future<bool> save(MemAuditProblem model) async {
    bool result;
    if (model.idProblem == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idProblem = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idProblem.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class MemAuditProblemRepository extends _MemAuditProblemRepositoryGenerated {
  factory MemAuditProblemRepository() = _MemAuditProblemRepositoryImpl;
}

class _MemAuditProblemRepositoryImpl extends _MemAuditProblemRepositoryGeneratedImpl
    implements MemAuditProblemRepository {
  static _MemAuditProblemRepositoryImpl _this;
  factory _MemAuditProblemRepositoryImpl() {
    if (_this == null) {
      _this = new _MemAuditProblemRepositoryImpl._();
    }
    return _this;
  }
  _MemAuditProblemRepositoryImpl._();
}
*/
