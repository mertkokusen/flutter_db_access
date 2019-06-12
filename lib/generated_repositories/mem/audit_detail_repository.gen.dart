
part of '../../repositories/mem/audit_detail_repository.dart';

abstract class _AuditDetailRepositoryGenerated {
  Future<AuditDetail> getInstance(int idAgent);
  Future<List<AuditDetail>> retrieveAll();

 Future<bool> save(AuditDetail agent);
}
class _AuditDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _AuditDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "AUDIT_DETAIL";
  static const String _primaryKey = "ID_AUDIT_DETAIL";

  _AuditDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<AuditDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return AuditDetail.fromMap(map);
  }

  Future<List<AuditDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => AuditDetail.fromMap(f)).toList();
  }

  Future<AuditDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => AuditDetail.fromMap(f)).first : AuditDetail();
  }

  Future<Iterable<AuditDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => AuditDetail.fromMap(f));
  }
Future<bool> save(AuditDetail model) async {
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
abstract class AuditDetailRepository extends _AuditDetailRepositoryGenerated {
  factory AuditDetailRepository() = _AuditDetailRepositoryImpl;
}

class _AuditDetailRepositoryImpl extends _AuditDetailRepositoryGeneratedImpl
    implements AuditDetailRepository {
  static _AuditDetailRepositoryImpl _this;
  factory _AuditDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _AuditDetailRepositoryImpl._();
    }
    return _this;
  }
  _AuditDetailRepositoryImpl._();
}
*/
