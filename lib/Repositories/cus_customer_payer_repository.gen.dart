import 'package:database_access_layer/Entities/cus_customer_payer.gen.dart';
import 'base_provider.dart';

abstract class _CusCustomerPayerRepositoryGenerated {
  Future<CusCustomerPayer> getInstance(int idAgent);
  Future<bool> save(CusCustomerPayer agent);
  Future<List<CusCustomerPayer>> retrieveAll();
}

class _CusCustomerPayerRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusCustomerPayerRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_CUSTOMER_PAYER";
  static const String _primaryKey = "ID_CUSTOMER_PAYER";

  _CusCustomerPayerRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusCustomerPayer> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusCustomerPayer.fromMap(map);
  }

  Future<List<CusCustomerPayer>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusCustomerPayer.fromMap(f)).toList();
  }

  Future<CusCustomerPayer> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusCustomerPayer.fromMap(f)).first : CusCustomerPayer();
  }

  Future<Iterable<CusCustomerPayer>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusCustomerPayer.fromMap(f));
  }
Future<bool> save(CusCustomerPayer model) async {
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
abstract class CusCustomerPayerRepository extends _CusCustomerPayerRepositoryGenerated {
  factory CusCustomerPayerRepository() = _CusCustomerPayerRepositoryImpl;
}

class _CusCustomerPayerRepositoryImpl extends _CusCustomerPayerRepositoryGeneratedImpl
    implements CusCustomerPayerRepository {
  static _CusCustomerPayerRepositoryImpl _this;
  factory _CusCustomerPayerRepositoryImpl() {
    if (_this == null) {
      _this = new _CusCustomerPayerRepositoryImpl._();
    }
    return _this;
  }
  _CusCustomerPayerRepositoryImpl._();
}
*/
