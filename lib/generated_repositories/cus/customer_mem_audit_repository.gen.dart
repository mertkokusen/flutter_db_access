
part of '../../repositories/cus/customer_mem_audit_repository.dart';

abstract class _CustomerMemAuditRepositoryGenerated {
  Future<CustomerMemAudit> getInstance(int idAgent);
  Future<List<CustomerMemAudit>> retrieveAll();

 Future<bool> save(CustomerMemAudit agent);
}
class _CustomerMemAuditRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CustomerMemAuditRepositoryGeneratedImpl _this;
  static const String _tableName = "CUSTOMER_MEM_AUDIT";
  static const String _primaryKey = "ID_CUSTOMER_MEM_AUDIT";

  _CustomerMemAuditRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CustomerMemAudit> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CustomerMemAudit.fromMap(map);
  }

  Future<List<CustomerMemAudit>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CustomerMemAudit.fromMap(f)).toList();
  }

  Future<CustomerMemAudit> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CustomerMemAudit.fromMap(f)).first : CustomerMemAudit();
  }

  Future<Iterable<CustomerMemAudit>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CustomerMemAudit.fromMap(f));
  }
Future<bool> save(CustomerMemAudit model) async {
    bool result;
    if (model.idCustomerMemAudit == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCustomerMemAudit = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCustomerMemAudit.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CustomerMemAuditRepository extends _CustomerMemAuditRepositoryGenerated {
  factory CustomerMemAuditRepository() = _CustomerMemAuditRepositoryImpl;
}

class _CustomerMemAuditRepositoryImpl extends _CustomerMemAuditRepositoryGeneratedImpl
    implements CustomerMemAuditRepository {
  static _CustomerMemAuditRepositoryImpl _this;
  factory _CustomerMemAuditRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerMemAuditRepositoryImpl._();
    }
    return _this;
  }
  _CustomerMemAuditRepositoryImpl._();
}
*/
