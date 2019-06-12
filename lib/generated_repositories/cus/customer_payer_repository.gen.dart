
part of '../../repositories/cus/customer_payer_repository.dart';

abstract class _CustomerPayerRepositoryGenerated {
  Future<CustomerPayer> getInstance(int idAgent);
  Future<List<CustomerPayer>> retrieveAll();

 Future<bool> save(CustomerPayer agent);
}
class _CustomerPayerRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CustomerPayerRepositoryGeneratedImpl _this;
  static const String _tableName = "CUSTOMER_PAYER";
  static const String _primaryKey = "ID_CUSTOMER_PAYER";

  _CustomerPayerRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CustomerPayer> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CustomerPayer.fromMap(map);
  }

  Future<List<CustomerPayer>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CustomerPayer.fromMap(f)).toList();
  }

  Future<CustomerPayer> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CustomerPayer.fromMap(f)).first : CustomerPayer();
  }

  Future<Iterable<CustomerPayer>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CustomerPayer.fromMap(f));
  }
Future<bool> save(CustomerPayer model) async {
    bool result;
    if (model.idCustomerPayer == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCustomerPayer = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCustomerPayer.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CustomerPayerRepository extends _CustomerPayerRepositoryGenerated {
  factory CustomerPayerRepository() = _CustomerPayerRepositoryImpl;
}

class _CustomerPayerRepositoryImpl extends _CustomerPayerRepositoryGeneratedImpl
    implements CustomerPayerRepository {
  static _CustomerPayerRepositoryImpl _this;
  factory _CustomerPayerRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerPayerRepositoryImpl._();
    }
    return _this;
  }
  _CustomerPayerRepositoryImpl._();
}
*/
