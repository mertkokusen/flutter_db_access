import 'package:database_access_layer/Entities/mem_audit.gen.dart';
import 'base_provider.dart';

abstract class _MemAuditRepositoryGenerated {
  Future<MemAudit> getInstance(int idAgent);
  Future<bool> save(MemAudit agent);
  Future<List<MemAudit>> retrieveAll();
}

class _MemAuditRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MemAuditRepositoryGeneratedImpl _this;
  static const String _tableName = "MEM_AUDIT";
  static const String _primaryKey = "ID_AUDIT";

  _MemAuditRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<MemAudit> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return MemAudit.fromMap(map);
  }

  Future<List<MemAudit>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => MemAudit.fromMap(f)).toList();
  }

  Future<MemAudit> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => MemAudit.fromMap(f)).first : MemAudit();
  }

  Future<Iterable<MemAudit>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => MemAudit.fromMap(f));
  }
Future<bool> save(MemAudit model) async {
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
abstract class MemAuditRepository extends _MemAuditRepositoryGenerated {
  factory MemAuditRepository() = _MemAuditRepositoryImpl;
}

class _MemAuditRepositoryImpl extends _MemAuditRepositoryGeneratedImpl
    implements MemAuditRepository {
  static _MemAuditRepositoryImpl _this;
  factory _MemAuditRepositoryImpl() {
    if (_this == null) {
      _this = new _MemAuditRepositoryImpl._();
    }
    return _this;
  }
  _MemAuditRepositoryImpl._();
}
*/
