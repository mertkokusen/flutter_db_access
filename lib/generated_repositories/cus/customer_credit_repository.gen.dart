
part of '../../repositories/cus/customer_credit_repository.dart';

abstract class _CustomerCreditRepositoryGenerated {
  Future<CustomerCredit> getInstance(int idAgent);
  Future<List<CustomerCredit>> retrieveAll();

 Future<bool> save(CustomerCredit agent);
}
class _CustomerCreditRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CustomerCreditRepositoryGeneratedImpl _this;
  static const String _tableName = "CUSTOMER_CREDIT";
  static const String _primaryKey = "ID_CUSTOMER_CREDIT";

  _CustomerCreditRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CustomerCredit> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CustomerCredit.fromMap(map);
  }

  Future<List<CustomerCredit>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CustomerCredit.fromMap(f)).toList();
  }

  Future<CustomerCredit> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CustomerCredit.fromMap(f)).first : CustomerCredit();
  }

  Future<Iterable<CustomerCredit>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CustomerCredit.fromMap(f));
  }
Future<bool> save(CustomerCredit model) async {
    bool result;
    if (model.idCustomerCredit == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCustomerCredit = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCustomerCredit.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CustomerCreditRepository extends _CustomerCreditRepositoryGenerated {
  factory CustomerCreditRepository() = _CustomerCreditRepositoryImpl;
}

class _CustomerCreditRepositoryImpl extends _CustomerCreditRepositoryGeneratedImpl
    implements CustomerCreditRepository {
  static _CustomerCreditRepositoryImpl _this;
  factory _CustomerCreditRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerCreditRepositoryImpl._();
    }
    return _this;
  }
  _CustomerCreditRepositoryImpl._();
}
*/
