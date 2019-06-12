
part of '../../repositories/cus/customer_telephone_repository.dart';

abstract class _CustomerTelephoneRepositoryGenerated {
  Future<CustomerTelephone> getInstance(int idAgent);
  Future<List<CustomerTelephone>> retrieveAll();

 Future<bool> save(CustomerTelephone agent);
}
class _CustomerTelephoneRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CustomerTelephoneRepositoryGeneratedImpl _this;
  static const String _tableName = "CUSTOMER_TELEPHONE";
  static const String _primaryKey = "ID_CUSTOMER_TELEPHONE";

  _CustomerTelephoneRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CustomerTelephone> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CustomerTelephone.fromMap(map);
  }

  Future<List<CustomerTelephone>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CustomerTelephone.fromMap(f)).toList();
  }

  Future<CustomerTelephone> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CustomerTelephone.fromMap(f)).first : CustomerTelephone();
  }

  Future<Iterable<CustomerTelephone>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CustomerTelephone.fromMap(f));
  }
Future<bool> save(CustomerTelephone model) async {
    bool result;
    if (model.idCustomerTelephone == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCustomerTelephone = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCustomerTelephone.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CustomerTelephoneRepository extends _CustomerTelephoneRepositoryGenerated {
  factory CustomerTelephoneRepository() = _CustomerTelephoneRepositoryImpl;
}

class _CustomerTelephoneRepositoryImpl extends _CustomerTelephoneRepositoryGeneratedImpl
    implements CustomerTelephoneRepository {
  static _CustomerTelephoneRepositoryImpl _this;
  factory _CustomerTelephoneRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerTelephoneRepositoryImpl._();
    }
    return _this;
  }
  _CustomerTelephoneRepositoryImpl._();
}
*/
