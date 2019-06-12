
part of '../../repositories/cus/customer_attribute_repository.dart';

abstract class _CustomerAttributeRepositoryGenerated {
  Future<CustomerAttribute> getInstance(int idAgent);
  Future<List<CustomerAttribute>> retrieveAll();

 Future<bool> save(CustomerAttribute agent);
}
class _CustomerAttributeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CustomerAttributeRepositoryGeneratedImpl _this;
  static const String _tableName = "CUSTOMER_ATTRIBUTE";
  static const String _primaryKey = "ID_CUSTOMER_ATTRIBUTE";

  _CustomerAttributeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CustomerAttribute> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CustomerAttribute.fromMap(map);
  }

  Future<List<CustomerAttribute>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CustomerAttribute.fromMap(f)).toList();
  }

  Future<CustomerAttribute> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CustomerAttribute.fromMap(f)).first : CustomerAttribute();
  }

  Future<Iterable<CustomerAttribute>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CustomerAttribute.fromMap(f));
  }
Future<bool> save(CustomerAttribute model) async {
    bool result;
    if (model.idCustomerAttribute == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCustomerAttribute = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCustomerAttribute.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CustomerAttributeRepository extends _CustomerAttributeRepositoryGenerated {
  factory CustomerAttributeRepository() = _CustomerAttributeRepositoryImpl;
}

class _CustomerAttributeRepositoryImpl extends _CustomerAttributeRepositoryGeneratedImpl
    implements CustomerAttributeRepository {
  static _CustomerAttributeRepositoryImpl _this;
  factory _CustomerAttributeRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerAttributeRepositoryImpl._();
    }
    return _this;
  }
  _CustomerAttributeRepositoryImpl._();
}
*/
