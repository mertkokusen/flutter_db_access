
part of '../../repositories/cus/customer_repository.dart';

abstract class _CustomerRepositoryGenerated {
  Future<Customer> getInstance(int idAgent);
  Future<List<Customer>> retrieveAll();

 Future<bool> save(Customer agent);
}
class _CustomerRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CustomerRepositoryGeneratedImpl _this;
  static const String _tableName = "CUSTOMER";
  static const String _primaryKey = "ID_CUSTOMER";

  _CustomerRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<Customer> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return Customer.fromMap(map);
  }

  Future<List<Customer>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => Customer.fromMap(f)).toList();
  }

  Future<Customer> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => Customer.fromMap(f)).first : Customer();
  }

  Future<Iterable<Customer>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => Customer.fromMap(f));
  }
Future<bool> save(Customer model) async {
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
abstract class CustomerRepository extends _CustomerRepositoryGenerated {
  factory CustomerRepository() = _CustomerRepositoryImpl;
}

class _CustomerRepositoryImpl extends _CustomerRepositoryGeneratedImpl
    implements CustomerRepository {
  static _CustomerRepositoryImpl _this;
  factory _CustomerRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerRepositoryImpl._();
    }
    return _this;
  }
  _CustomerRepositoryImpl._();
}
*/
