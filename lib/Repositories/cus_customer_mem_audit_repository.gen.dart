import 'package:database_access_layer/Entities/cus_customer_mem_audit.gen.dart';
import 'base_provider.dart';

abstract class _CusCustomerMemAuditRepositoryGenerated {
  Future<CusCustomerMemAudit> getInstance(int idAgent);
  Future<bool> save(CusCustomerMemAudit agent);
  Future<List<CusCustomerMemAudit>> retrieveAll();
}

class _CusCustomerMemAuditRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusCustomerMemAuditRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_CUSTOMER_MEM_AUDIT";
  static const String _primaryKey = "ID_CUSTOMER_MEM_AUDIT";

  _CusCustomerMemAuditRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusCustomerMemAudit> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusCustomerMemAudit.fromMap(map);
  }

  Future<List<CusCustomerMemAudit>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusCustomerMemAudit.fromMap(f)).toList();
  }

  Future<CusCustomerMemAudit> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusCustomerMemAudit.fromMap(f)).first : CusCustomerMemAudit();
  }

  Future<Iterable<CusCustomerMemAudit>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusCustomerMemAudit.fromMap(f));
  }
Future<bool> save(CusCustomerMemAudit model) async {
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
abstract class CusCustomerMemAuditRepository extends _CusCustomerMemAuditRepositoryGenerated {
  factory CusCustomerMemAuditRepository() = _CusCustomerMemAuditRepositoryImpl;
}

class _CusCustomerMemAuditRepositoryImpl extends _CusCustomerMemAuditRepositoryGeneratedImpl
    implements CusCustomerMemAuditRepository {
  static _CusCustomerMemAuditRepositoryImpl _this;
  factory _CusCustomerMemAuditRepositoryImpl() {
    if (_this == null) {
      _this = new _CusCustomerMemAuditRepositoryImpl._();
    }
    return _this;
  }
  _CusCustomerMemAuditRepositoryImpl._();
}
*/
