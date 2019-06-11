import 'package:database_access_layer/Entities/cus_customer_attribute.gen.dart';
import 'base_provider.dart';

abstract class _CusCustomerAttributeRepositoryGenerated {
  Future<CusCustomerAttribute> getInstance(int idAgent);
  Future<bool> save(CusCustomerAttribute agent);
  Future<List<CusCustomerAttribute>> retrieveAll();
}

class _CusCustomerAttributeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusCustomerAttributeRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_CUSTOMER_ATTRIBUTE";
  static const String _primaryKey = "ID_CUSTOMER_ATTRIBUTE";

  _CusCustomerAttributeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusCustomerAttribute> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusCustomerAttribute.fromMap(map);
  }

  Future<List<CusCustomerAttribute>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusCustomerAttribute.fromMap(f)).toList();
  }

  Future<CusCustomerAttribute> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusCustomerAttribute.fromMap(f)).first : CusCustomerAttribute();
  }

  Future<Iterable<CusCustomerAttribute>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusCustomerAttribute.fromMap(f));
  }
Future<bool> save(CusCustomerAttribute model) async {
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
abstract class CusCustomerAttributeRepository extends _CusCustomerAttributeRepositoryGenerated {
  factory CusCustomerAttributeRepository() = _CusCustomerAttributeRepositoryImpl;
}

class _CusCustomerAttributeRepositoryImpl extends _CusCustomerAttributeRepositoryGeneratedImpl
    implements CusCustomerAttributeRepository {
  static _CusCustomerAttributeRepositoryImpl _this;
  factory _CusCustomerAttributeRepositoryImpl() {
    if (_this == null) {
      _this = new _CusCustomerAttributeRepositoryImpl._();
    }
    return _this;
  }
  _CusCustomerAttributeRepositoryImpl._();
}
*/
