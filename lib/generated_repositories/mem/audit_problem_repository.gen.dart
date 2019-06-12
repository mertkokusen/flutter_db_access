
part of '../../repositories/mem/audit_problem_repository.dart';

abstract class _AuditProblemRepositoryGenerated {
  Future<AuditProblem> getInstance(int idAgent);
  Future<List<AuditProblem>> retrieveAll();

 Future<bool> save(AuditProblem agent);
}
class _AuditProblemRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _AuditProblemRepositoryGeneratedImpl _this;
  static const String _tableName = "AUDIT_PROBLEM";
  static const String _primaryKey = "ID_PROBLEM";

  _AuditProblemRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<AuditProblem> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return AuditProblem.fromMap(map);
  }

  Future<List<AuditProblem>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => AuditProblem.fromMap(f)).toList();
  }

  Future<AuditProblem> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => AuditProblem.fromMap(f)).first : AuditProblem();
  }

  Future<Iterable<AuditProblem>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => AuditProblem.fromMap(f));
  }
Future<bool> save(AuditProblem model) async {
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
abstract class AuditProblemRepository extends _AuditProblemRepositoryGenerated {
  factory AuditProblemRepository() = _AuditProblemRepositoryImpl;
}

class _AuditProblemRepositoryImpl extends _AuditProblemRepositoryGeneratedImpl
    implements AuditProblemRepository {
  static _AuditProblemRepositoryImpl _this;
  factory _AuditProblemRepositoryImpl() {
    if (_this == null) {
      _this = new _AuditProblemRepositoryImpl._();
    }
    return _this;
  }
  _AuditProblemRepositoryImpl._();
}
*/
