import 'package:database_access_layer/Entities/cus_contract_customer.gen.dart';
import 'base_provider.dart';

abstract class _CusContractCustomerRepositoryGenerated {
  Future<CusContractCustomer> getInstance(int idAgent);
  Future<bool> save(CusContractCustomer agent);
  Future<List<CusContractCustomer>> retrieveAll();
}

class _CusContractCustomerRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusContractCustomerRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_CONTRACT_CUSTOMER";
  static const String _primaryKey = "ID_CONTRACT_CUSTOMER";

  _CusContractCustomerRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusContractCustomer> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusContractCustomer.fromMap(map);
  }

  Future<List<CusContractCustomer>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusContractCustomer.fromMap(f)).toList();
  }

  Future<CusContractCustomer> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusContractCustomer.fromMap(f)).first : CusContractCustomer();
  }

  Future<Iterable<CusContractCustomer>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusContractCustomer.fromMap(f));
  }
Future<bool> save(CusContractCustomer model) async {
    bool result;
    if (model.idContractCustomer == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idContractCustomer = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idContractCustomer.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusContractCustomerRepository extends _CusContractCustomerRepositoryGenerated {
  factory CusContractCustomerRepository() = _CusContractCustomerRepositoryImpl;
}

class _CusContractCustomerRepositoryImpl extends _CusContractCustomerRepositoryGeneratedImpl
    implements CusContractCustomerRepository {
  static _CusContractCustomerRepositoryImpl _this;
  factory _CusContractCustomerRepositoryImpl() {
    if (_this == null) {
      _this = new _CusContractCustomerRepositoryImpl._();
    }
    return _this;
  }
  _CusContractCustomerRepositoryImpl._();
}
*/
