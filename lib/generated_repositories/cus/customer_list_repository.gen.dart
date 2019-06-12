
part of '../../repositories/cus/customer_list_repository.dart';

abstract class _CustomerListRepositoryGenerated {
  Future<CustomerList> getInstance(int idAgent);
  Future<List<CustomerList>> retrieveAll();

 Future<bool> save(CustomerList agent);
}
class _CustomerListRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CustomerListRepositoryGeneratedImpl _this;
  static const String _tableName = "CUSTOMER_LIST";
  static const String _primaryKey = "ID_CUSTOMER_LIST";

  _CustomerListRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CustomerList> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CustomerList.fromMap(map);
  }

  Future<List<CustomerList>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CustomerList.fromMap(f)).toList();
  }

  Future<CustomerList> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CustomerList.fromMap(f)).first : CustomerList();
  }

  Future<Iterable<CustomerList>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CustomerList.fromMap(f));
  }
Future<bool> save(CustomerList model) async {
    bool result;
    if (model.idCustomerList == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCustomerList = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCustomerList.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CustomerListRepository extends _CustomerListRepositoryGenerated {
  factory CustomerListRepository() = _CustomerListRepositoryImpl;
}

class _CustomerListRepositoryImpl extends _CustomerListRepositoryGeneratedImpl
    implements CustomerListRepository {
  static _CustomerListRepositoryImpl _this;
  factory _CustomerListRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerListRepositoryImpl._();
    }
    return _this;
  }
  _CustomerListRepositoryImpl._();
}
*/
