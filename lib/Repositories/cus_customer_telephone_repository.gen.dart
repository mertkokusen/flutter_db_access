import 'package:database_access_layer/Entities/cus_customer_telephone.gen.dart';
import 'base_provider.dart';

abstract class _CusCustomerTelephoneRepositoryGenerated {
  Future<CusCustomerTelephone> getInstance(int idAgent);
  Future<bool> save(CusCustomerTelephone agent);
  Future<List<CusCustomerTelephone>> retrieveAll();
}

class _CusCustomerTelephoneRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusCustomerTelephoneRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_CUSTOMER_TELEPHONE";
  static const String _primaryKey = "ID_CUSTOMER_TELEPHONE";

  _CusCustomerTelephoneRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusCustomerTelephone> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusCustomerTelephone.fromMap(map);
  }

  Future<List<CusCustomerTelephone>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusCustomerTelephone.fromMap(f)).toList();
  }

  Future<CusCustomerTelephone> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusCustomerTelephone.fromMap(f)).first : CusCustomerTelephone();
  }

  Future<Iterable<CusCustomerTelephone>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusCustomerTelephone.fromMap(f));
  }
Future<bool> save(CusCustomerTelephone model) async {
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
abstract class CusCustomerTelephoneRepository extends _CusCustomerTelephoneRepositoryGenerated {
  factory CusCustomerTelephoneRepository() = _CusCustomerTelephoneRepositoryImpl;
}

class _CusCustomerTelephoneRepositoryImpl extends _CusCustomerTelephoneRepositoryGeneratedImpl
    implements CusCustomerTelephoneRepository {
  static _CusCustomerTelephoneRepositoryImpl _this;
  factory _CusCustomerTelephoneRepositoryImpl() {
    if (_this == null) {
      _this = new _CusCustomerTelephoneRepositoryImpl._();
    }
    return _this;
  }
  _CusCustomerTelephoneRepositoryImpl._();
}
*/
