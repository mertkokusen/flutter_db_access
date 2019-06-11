import 'package:database_access_layer/Entities/mem_audit_detail.gen.dart';
import 'base_provider.dart';

abstract class _MemAuditDetailRepositoryGenerated {
  Future<MemAuditDetail> getInstance(int idAgent);
  Future<bool> save(MemAuditDetail agent);
  Future<List<MemAuditDetail>> retrieveAll();
}

class _MemAuditDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MemAuditDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "MEM_AUDIT_DETAIL";
  static const String _primaryKey = "ID_AUDIT_DETAIL";

  _MemAuditDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<MemAuditDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return MemAuditDetail.fromMap(map);
  }

  Future<List<MemAuditDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => MemAuditDetail.fromMap(f)).toList();
  }

  Future<MemAuditDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => MemAuditDetail.fromMap(f)).first : MemAuditDetail();
  }

  Future<Iterable<MemAuditDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => MemAuditDetail.fromMap(f));
  }
Future<bool> save(MemAuditDetail model) async {
    bool result;
    if (model.idAuditDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idAuditDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idAuditDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class MemAuditDetailRepository extends _MemAuditDetailRepositoryGenerated {
  factory MemAuditDetailRepository() = _MemAuditDetailRepositoryImpl;
}

class _MemAuditDetailRepositoryImpl extends _MemAuditDetailRepositoryGeneratedImpl
    implements MemAuditDetailRepository {
  static _MemAuditDetailRepositoryImpl _this;
  factory _MemAuditDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _MemAuditDetailRepositoryImpl._();
    }
    return _this;
  }
  _MemAuditDetailRepositoryImpl._();
}
*/
