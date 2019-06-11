import 'package:database_access_layer/Entities/cus_customer_credit.gen.dart';
import 'base_provider.dart';

abstract class _CusCustomerCreditRepositoryGenerated {
  Future<CusCustomerCredit> getInstance(int idAgent);
  Future<bool> save(CusCustomerCredit agent);
  Future<List<CusCustomerCredit>> retrieveAll();
}

class _CusCustomerCreditRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusCustomerCreditRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_CUSTOMER_CREDIT";
  static const String _primaryKey = "ID_CUSTOMER_CREDIT";

  _CusCustomerCreditRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusCustomerCredit> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusCustomerCredit.fromMap(map);
  }

  Future<List<CusCustomerCredit>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusCustomerCredit.fromMap(f)).toList();
  }

  Future<CusCustomerCredit> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusCustomerCredit.fromMap(f)).first : CusCustomerCredit();
  }

  Future<Iterable<CusCustomerCredit>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusCustomerCredit.fromMap(f));
  }
Future<bool> save(CusCustomerCredit model) async {
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
abstract class CusCustomerCreditRepository extends _CusCustomerCreditRepositoryGenerated {
  factory CusCustomerCreditRepository() = _CusCustomerCreditRepositoryImpl;
}

class _CusCustomerCreditRepositoryImpl extends _CusCustomerCreditRepositoryGeneratedImpl
    implements CusCustomerCreditRepository {
  static _CusCustomerCreditRepositoryImpl _this;
  factory _CusCustomerCreditRepositoryImpl() {
    if (_this == null) {
      _this = new _CusCustomerCreditRepositoryImpl._();
    }
    return _this;
  }
  _CusCustomerCreditRepositoryImpl._();
}
*/
