
part of '../../repositories/cus/contract_customer_repository.dart';

abstract class _ContractCustomerRepositoryGenerated {
  Future<ContractCustomer> getInstance(int idAgent);
  Future<List<ContractCustomer>> retrieveAll();

 Future<bool> save(ContractCustomer agent);
}
class _ContractCustomerRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _ContractCustomerRepositoryGeneratedImpl _this;
  static const String _tableName = "CONTRACT_CUSTOMER";
  static const String _primaryKey = "ID_CONTRACT_CUSTOMER";

  _ContractCustomerRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<ContractCustomer> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return ContractCustomer.fromMap(map);
  }

  Future<List<ContractCustomer>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => ContractCustomer.fromMap(f)).toList();
  }

  Future<ContractCustomer> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => ContractCustomer.fromMap(f)).first : ContractCustomer();
  }

  Future<Iterable<ContractCustomer>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => ContractCustomer.fromMap(f));
  }
Future<bool> save(ContractCustomer model) async {
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
abstract class ContractCustomerRepository extends _ContractCustomerRepositoryGenerated {
  factory ContractCustomerRepository() = _ContractCustomerRepositoryImpl;
}

class _ContractCustomerRepositoryImpl extends _ContractCustomerRepositoryGeneratedImpl
    implements ContractCustomerRepository {
  static _ContractCustomerRepositoryImpl _this;
  factory _ContractCustomerRepositoryImpl() {
    if (_this == null) {
      _this = new _ContractCustomerRepositoryImpl._();
    }
    return _this;
  }
  _ContractCustomerRepositoryImpl._();
}
*/
