import 'package:database_access_layer/Entities/cus_customer.gen.dart';
import 'base_provider.dart';

abstract class _CusCustomerRepositoryGenerated {
  Future<CusCustomer> getInstance(int idAgent);
  Future<bool> save(CusCustomer agent);
  Future<List<CusCustomer>> retrieveAll();
}

class _CusCustomerRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusCustomerRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_CUSTOMER";
  static const String _primaryKey = "ID_CUSTOMER";

  _CusCustomerRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusCustomer> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusCustomer.fromMap(map);
  }

  Future<List<CusCustomer>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusCustomer.fromMap(f)).toList();
  }

  Future<CusCustomer> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusCustomer.fromMap(f)).first : CusCustomer();
  }

  Future<Iterable<CusCustomer>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusCustomer.fromMap(f));
  }
Future<bool> save(CusCustomer model) async {
    bool result;
    if (model.idCustomer == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCustomer = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCustomer.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusCustomerRepository extends _CusCustomerRepositoryGenerated {
  factory CusCustomerRepository() = _CusCustomerRepositoryImpl;
}

class _CusCustomerRepositoryImpl extends _CusCustomerRepositoryGeneratedImpl
    implements CusCustomerRepository {
  static _CusCustomerRepositoryImpl _this;
  factory _CusCustomerRepositoryImpl() {
    if (_this == null) {
      _this = new _CusCustomerRepositoryImpl._();
    }
    return _this;
  }
  _CusCustomerRepositoryImpl._();
}
*/
