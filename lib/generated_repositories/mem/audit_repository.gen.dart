
part of '../../repositories/mem/audit_repository.dart';

abstract class _AuditRepositoryGenerated {
  Future<Audit> getInstance(int idAgent);
  Future<List<Audit>> retrieveAll();

 Future<bool> save(Audit agent);
}
class _AuditRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _AuditRepositoryGeneratedImpl _this;
  static const String _tableName = "AUDIT";
  static const String _primaryKey = "ID_AUDIT";

  _AuditRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<Audit> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return Audit.fromMap(map);
  }

  Future<List<Audit>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => Audit.fromMap(f)).toList();
  }

  Future<Audit> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => Audit.fromMap(f)).first : Audit();
  }

  Future<Iterable<Audit>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => Audit.fromMap(f));
  }
Future<bool> save(Audit model) async {
    bool result;
    if (model.idAudit == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idAudit = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idAudit.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class AuditRepository extends _AuditRepositoryGenerated {
  factory AuditRepository() = _AuditRepositoryImpl;
}

class _AuditRepositoryImpl extends _AuditRepositoryGeneratedImpl
    implements AuditRepository {
  static _AuditRepositoryImpl _this;
  factory _AuditRepositoryImpl() {
    if (_this == null) {
      _this = new _AuditRepositoryImpl._();
    }
    return _this;
  }
  _AuditRepositoryImpl._();
}
*/
