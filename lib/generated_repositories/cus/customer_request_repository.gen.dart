
part of '../../repositories/cus/customer_request_repository.dart';

abstract class _CustomerRequestRepositoryGenerated {
  Future<CustomerRequest> getInstance(int idAgent);
  Future<List<CustomerRequest>> retrieveAll();

 Future<bool> save(CustomerRequest agent);
}
class _CustomerRequestRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CustomerRequestRepositoryGeneratedImpl _this;
  static const String _tableName = "CUSTOMER_REQUEST";
  static const String _primaryKey = "ID_CUSTOMER_REQUEST";

  _CustomerRequestRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CustomerRequest> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CustomerRequest.fromMap(map);
  }

  Future<List<CustomerRequest>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CustomerRequest.fromMap(f)).toList();
  }

  Future<CustomerRequest> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CustomerRequest.fromMap(f)).first : CustomerRequest();
  }

  Future<Iterable<CustomerRequest>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CustomerRequest.fromMap(f));
  }
Future<bool> save(CustomerRequest model) async {
    bool result;
    if (model.idCustomerRequest == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCustomerRequest = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCustomerRequest.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CustomerRequestRepository extends _CustomerRequestRepositoryGenerated {
  factory CustomerRequestRepository() = _CustomerRequestRepositoryImpl;
}

class _CustomerRequestRepositoryImpl extends _CustomerRequestRepositoryGeneratedImpl
    implements CustomerRequestRepository {
  static _CustomerRequestRepositoryImpl _this;
  factory _CustomerRequestRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerRequestRepositoryImpl._();
    }
    return _this;
  }
  _CustomerRequestRepositoryImpl._();
}
*/
